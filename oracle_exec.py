import sublime
import re
import os.path
from . import oracle_lib
from Default import exec as execmod

RE_ENTITIES = re.compile("^\\((.+?)/(0):[0-9]+\\) ([0-9]+):[0-9]+ (.+)$", re.M)

class OracleExecCommand(execmod.ExecCommand):
    def run(self, dsn="", **kwargs):
        if not dsn and not kwargs.get("kill", False):
            # if cmd is empty, open the command_palette with the available build list
            self.window.run_command("show_overlay", {"overlay": "command_palette", "text": "Build: " + kwargs.get("prefix", "")})
        else:
            # Find entities declaration in source
            self.entities = oracle_lib.find_entities(self.window.active_view())
            # Create a string for the in of sql command
            sqlfilter = '"' + ",".join("'%s'" % entity for entity in self.entities.keys()) + '"'

            # Windows
            # cmd = ["sqlplus.exe", "-s", dsn, "@", os.path.join(sublime.packages_path(), 'OracleSQL', 'RunSQL.sql'), self.window.active_view().file_name(), sqlfilter]

            # UNIX/Mac
            # cmd = ["sqlplus", "-s", dsn, "@", os.path.join(sublime.packages_path(), 'OracleSQL', 'RunSQL.sql'), self.window.active_view().file_name(), sqlfilter]
            runsql = os.path.expanduser('~') + '/Documents/SublimeText3_OracleSQL_RunSQL.sql'
            if not os.path.exists(runsql):
                f = open(runsql, "w")
                f.write('SET LINESIZE 2000\n')
                f.write('SET PAGESIZE 0\n')
                f.write('SET VERIFY OFF\n')
                f.write('SET FEEDBACK ON\n')
                f.write('@&1\n')
                f.write('show errors\n')
                #f.write('SELECT \'Filename: &1\' FROM DUAL;\n')
                f.close()
            cmd = ["sqlplus", "-s", dsn, "@", runsql, self.window.active_view().file_name(), sqlfilter]

            super(OracleExecCommand, self).run(cmd, "", "^Filename: (.+)$", "^\\(.+?/([0-9]+):([0-9]+)\\) [0-9]+:[0-9]+ (.+)$", **kwargs)

    def append_data(self, proc, data):
        # Update the line number of output_view with the correct line number of source view
        orgstr = data.decode(self.encoding)
        datastr = orgstr
        posoffset = 0
        for re_ent in RE_ENTITIES.finditer(orgstr):
            pos = re_ent.span(2)
            pos = (pos[0] + posoffset, pos[1] + posoffset)
            sourceoffset = self.entities[re_ent.group(1)]
            sqlerrorline = int(re_ent.group(3))
            sourceline = sqlerrorline + sourceoffset

            datastr = datastr[:pos[0]] + str(sourceline) + datastr[pos[1]:]
            posoffset += len(str(sourceline)) - 1

        super(OracleExecCommand, self).append_data(proc, datastr.encode(self.encoding))
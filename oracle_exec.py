import sublime
import re
import os.path
from . import oracle_lib
import Default.exec as execmod

RE_ENTITIES = re.compile("^\\((.+?)/(0):[0-9]+\\) ([0-9]+):[0-9]+ (.+)$", re.M)


class OracleExecCommand(execmod.ExecCommand):
    def run(self, dsn="", sql_exec_path="", **kwargs):
        if not dsn and not kwargs.get("kill", False):
            # if dsn is empty, open the command_palette with the available build list
            self.window.run_command("show_overlay", {"overlay": "command_palette", "text": "Build: " + kwargs.get("prefix", "")})
        else:
            # Find entities declaration in source
            self.entities = oracle_lib.find_entities(self.window.active_view())
            print('123')
            (directory, filename) = os.path.split(self.window.active_view().file_name())
            cmd = [sql_exec_path if sql_exec_path else 'sqlplus' , "-s", dsn, "@", os.path.join(sublime.packages_path(), 'OraclePLSQL', 'RunSQL.sql'), '"'+filename+'"']

            super(OracleExecCommand, self).run(cmd, None, "^Filename: (.+)$", "^([0-9]+)/([0-9]+) (.+)$", working_dir=directory, **kwargs)

    def append_string(self, proc, string):
        """ Update the line number of output_view with the correct line number of source view
        """
        orgstring = string
        posoffset = 0

        for re_ent in RE_ENTITIES.finditer(orgstring):
            pos = re_ent.span(2)
            pos = (pos[0] + posoffset, pos[1] + posoffset)
            sourceoffset = self.entities[re_ent.group(1)]
            sqlerrorline = int(re_ent.group(3))
            sourceline = sqlerrorline + sourceoffset

            string = string[:pos[0]] + str(sourceline) + string[pos[1]:]
            posoffset += len(str(sourceline)) - 1

        super(OracleExecCommand, self).append_string(proc, string)

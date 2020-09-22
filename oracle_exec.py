import sublime
import re
import html
import time
import os.path
from . import oracle_lib
import Default.exec as execmod

#RE_ENTITIES = re.compile("^\\((.+?)/(0):[0-9]+\\) ([0-9]+):([0-9]+) \\[(WARNING|ERROR)\\] (.+)$", re.M)
RE_ENTITIES = re.compile("^([0-9]+)/([0-9]+) \\[(WARNING|ERROR)\\] (.+)$", re.M)

errors = 0
warnings = 0

class OracleExecCommand(execmod.ExecCommand):
    def run(self, dsn="", sql_exec_path="", **kwargs):
        if not dsn and not kwargs.get("kill", False):
            # if dsn is empty, open the command_palette with the available build list
            self.window.run_command("show_overlay", {"overlay": "command_palette", "text": "Build: " + kwargs.get("prefix", "")})
        else:
            # Find entities declaration in source
            self.entities = oracle_lib.find_entities(self.window.active_view())
            self.packageName = oracle_lib.getPackageName(self.window.active_view())
            self.objectType = oracle_lib.getObjectType(self.window.active_view())

            print(self.objectType)

            #print('123')
            (directory, filename) = os.path.split(self.window.active_view().file_name())
            cmd = [sql_exec_path if sql_exec_path else 'sqlplus' , "-s", dsn, "@", os.path.join(sublime.packages_path(), 'Advanced PLSQL', 'RunSQL.sql'), '"'+filename+'"', self.packageName.upper(), self.objectType.upper()]

            errors = 0
            warnings = 0

            super(OracleExecCommand, self).run(cmd, None, "^Filename: (.+)$", "^([0-9]+)/([0-9]+) (.+)$", working_dir=directory, **kwargs)

    def finish(self, proc):
        if not self.quiet:
            elapsed = time.time() - proc.start_time
            exit_code = proc.exit_code()
            if exit_code == 0 or exit_code is None:
                self.append_string(proc, "[Finished in %.1fs]" % elapsed)
            else:
                self.append_string(proc, "[Finished in %.1fs with exit code %d]\n" % (elapsed, exit_code))
                self.append_string(proc, self.debug_text)

        if proc != self.proc:
            return

        errs = self.output_view.find_all_results()
        if len(errs) == 0:
            sublime.status_message("Build finished")
        else:
            sublime.status_message("Build finished with %d errors and %d warnings" % (errors, warnings))

    def update_phantoms(self):
        global warnings, errors
        stylesheet = '''
            <style>
                div.buildresult-arrow {
                    border-top: 0.4rem solid transparent;
                    width: 0;
                    height: 0;
                }
                div.error-arrow {
                  border-left: 0.5rem solid color(var(--redish) blend(var(--background) 30%));
                }
                div.warning-arrow {
                  border-left: 0.5rem solid color(#6a6a00 blend(#6a6a00 30%));
                }
                div.buildresult {
                    padding: 0.4rem 0 0.4rem 0.7rem;
                    margin: 0 0 0.2rem;
                    border-radius: 0 0.2rem 0.2rem 0.2rem;
                }

                div.warning {
                    background-color: #6a6a00;
                }

                div.buildresult span.message {
                    padding-right: 0.7rem;
                }

                div.buildresult a {
                    text-decoration: inherit;
                    padding: 0.35rem 0.7rem 0.45rem 0.8rem;
                    position: relative;
                    bottom: 0.05rem;
                    border-radius: 0 0.2rem 0.2rem 0;
                    font-weight: bold;
                }
                html.dark div.buildresult a {
                    background-color: #00000018;
                }
                html.light div.buildresult a {
                    background-color: #ffffff18;
                }
            </style>
        '''

        for file, errs in self.errs_by_file.items():
            view = self.window.find_open_file(file)
            if view:

                buffer_id = view.buffer_id()
                if buffer_id not in self.phantom_sets_by_buffer:
                    phantom_set = sublime.PhantomSet(view, "exec")
                    self.phantom_sets_by_buffer[buffer_id] = phantom_set
                else:
                    phantom_set = self.phantom_sets_by_buffer[buffer_id]

                phantoms = []
                warnings = 0
                errors = 0
                warning = 0
                error = 0

                for line, column, text in errs:
                    pt = view.text_point(line - 1, column - 1)

                    warning = 0
                    error = 0

                    if text.count('[WARNING]') > 0:
                        warning = 1
                        warnings = warnings + 1
                        text = text[10:]
                    elif text.count('[ERROR]') > 0:
                        error = 1
                        errors = errors + 1
                        text = text[8:]


                    if warning == 1:
                        phantoms.append(sublime.Phantom(
                            sublime.Region(pt, view.line(pt).b),
                            ('<body id=inline-warning>' + stylesheet +
                                '<div class="buildresult-arrow warning-arrow"></div><div class="buildresult warning">' +
                                '<span class="message">' + html.escape(text, quote=False) + '</span>' +
                                '<a href=hide>' + chr(0x00D7) + '</a></div>' +
                                '</body>'),
                            sublime.LAYOUT_BELOW,
                            on_navigate=self.on_phantom_navigate))
                    elif error == 1:
                        phantoms.append(sublime.Phantom(
                            sublime.Region(pt, view.line(pt).b),
                            ('<body id=inline-error>' + stylesheet +
                                '<div class="buildresult-arrow error-arrow"></div><div class="buildresult error">' +
                                '<span class="message">' + html.escape(text, quote=False) + '</span>' +
                                '<a href=hide>' + chr(0x00D7) + '</a></div>' +
                                '</body>'),
                            sublime.LAYOUT_BELOW,
                            on_navigate=self.on_phantom_navigate))

                phantom_set.update(phantoms)

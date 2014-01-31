=========================================================
Sublime Text 3 plackage for editing Oracle SQL and PL/SQL 
=========================================================

Language definition and execution utilities for Oracle PL/SQL files.

It is based on the bundle http://code.google.com/p/oracle-textmate-bundle/ 


Install
-----
- Download and extract package. Place it in C:\\Users\\...\\AppData\\Roaming\\Sublime Text 3\\Packages\\
- Install keymaps for the commands (see Example.sublime-keymap for my preferred keys)

Build
-----

To execute your PL/SQL source on your schema with ST3 Build command, you have to create a .sublime-build in your ST3 Users folder file containing something like::

    {
        "selector": "source.plsql.oracle",
        "target": "oracle_exec",
        "variants":
        [
            {
                "dsn": "USERNAME/PASSWORD@SCHEMANAME2",
                "name": "COMMON SCHEMA 1"
            },
            {
                "dsn": "USERNAME/PASSWORD@SCHEMANAME2",
                "name": "COMMON SCHEMA 2"
            }
        ]
    }

Some other useful settings
----
I'm using TOAD standards iof the PLSQL file extentions. To be able to switch between package specification (.pks) and package body (.pkb) file add "pks" and "pkb" to the switch_file commant in the users keymap

    { "keys": ["alt+o"], "command": "switch_file", "args": {"extensions": ["cpp", "cxx", "cc", "c", "hpp", "hxx", "h", "ipp", "inl", "m", "mm", "pkb", "pks"]} },    



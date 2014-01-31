=========================================================
Sublime Text 3 plackage for editing Oracle SQL and PL/SQL 
=========================================================

Language definition and execution utilities for Oracle PL/SQL files.

It is based on the bundle http://code.google.com/p/oracle-textmate-bundle/ 

Install
-----
- Download and extract package. Rename folder from *Oracle-master* to *OracleSQL* and place in C:\\Users\\...\\AppData\\Roaming\\Sublime Text 2\\Packages\\
- Install keymaps for the commands (see Example.sublime-keymap for my preferred keys)

Build
-----

To execute your PL/SQL source on your schema with ST2 Build command, you have to create a .sublime-build in your ST2 Users folder file containing something like::

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


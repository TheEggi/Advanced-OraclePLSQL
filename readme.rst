=========================================================
Sublime Text 2 plackage for editing Oracle SQL and PL/SQL 
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
        "target": "oracle_exec",
        "selector": "source.plsql.oracle",
        "path": "/usr/local/oracle/instantclient_10_2",
        "env":
            {
                "ORACLE_HOME": "/usr/local/oracle/instantclient_10_2",
                "DYLD_LIBRARY_PATH": "/usr/local/oracle/instantclient_10_2",
                "SQLPATH": "/usr/local/oracle/instantclient_10_2",
                "NLS_LANG": "AMERICAN_AMERICA.UTF8",
                "TNS_ADMIN": "/usr/local/oracle/network/admin"
            },
        "variants":
        [
            {
                "name": "SCHEMA 1",
                "dsn": "USERNAME/PASSWORD@SCHEMANAME1",
                "encoding": "UTF-8"
            },
            {
                "name": "SCHEMA 2",
                "dsn": "USERNAME/PASSWORD@SCHEMANAME2",
                "encoding": "UTF-8"
            }
        ]
    }


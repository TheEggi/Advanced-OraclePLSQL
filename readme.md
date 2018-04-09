# Sublime Text 3 package for editing Oracle SQL and PL/SQL

Language definition and execution utilities for Oracle PL/SQL files.
It is based on the bundle http://code.google.com/p/oracle-textmate-bundle/ 

## Install
- Download and extract package. Place it in C:\\Users\\...\\AppData\\Roaming\\Sublime Text 3\\Packages\\OraclePLSQL

## Build
To execute your PL/SQL source on your schema with ST3 Build command, you have to create a .sublime-build in your ST3 Users folder.
To create this build file go to Tools -> Build System -> New Build System... .

Example:

```json
     {
        "selector": "source.plsql.oracle",
        "target": "oracle_exec",
        "variants":
        [
            {
                "dsn": "<user>/<password>@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=<host>)(PORT=1521)))(CONNECT_DATA=(SID=<sid>)))",
                "name": "<Name Shown in Sublime>",
                // optional setting: - default is "sqlplus". Path to SQLcl can be specified
                "sql_exec_path": "D:/sqldeveloper/sqlcl/bin/sql.exe",
            },
            {
                "dsn": "USERNAME/PASSWORD@SCHEMANAME2",
                "name": "<Name Shown in Sublime>"
            }
        ]
    }
```

## Some other useful settings
To be able to switch between package spec/header and type spec/body add "pkb", "pks", "tpb", "tps" to the list of extensions.

```json
{ 
  "keys": ["alt+o"], 
  "command": "switch_file", 
  "args": {
     "extensions": ["cpp", "cxx", "cc", "c", "hpp", "hxx", "h", "ipp", "inl", "m", "mm", "pkb", "pks", "tpb", "tps"]
   } 
}
```



SET LINESIZE 2000
SET PAGESIZE 0
SET VERIFY OFF
SET FEEDBACK OFF

alter session set plsql_warnings='ENABLE:ALL, DISABLE:(5021)';

@&1

SELECT 'Filename: &1' FROM DUAL
/

select decode(line, 0, 1, line) || '/' || position || ' [' || ATTRIBUTE || '] ' || TEXT
  from user_errors
 where name = '&2'
   and type = '&3';


EXIT

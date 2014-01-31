SET LINESIZE 2000
SET PAGESIZE 0
SET VERIFY OFF
SET FEEDBACK OFF

@&1

SELECT 'Filename: &1' FROM DUAL
/

SELECT '(' || type || ' ' || name || '/0:' || position || ')' || ' ' || line || ':' || position || ' ' || text as errors
  FROM user_errorS
 WHERE line <> 0
   AND type || ' ' || name in (&2)
ORDER BY name, type, sequence
/

EXIT

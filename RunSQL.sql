SET LINESIZE 2000
SET PAGESIZE 0
SET VERIFY OFF
SET FEEDBACK OFF

@&1

SELECT 'Filename: &1' FROM DUAL
/

SHOW ERRORS

select t1.line || '/1 Unused variable ''' || t1.name || ''''
  from user_identifiers t1
  join (with methods as (
      select object_name,
             object_type,
             name,
             usage_id
        from user_identifiers
       where usage = 'DEFINITION'
         and type in ('PROCEDURE', 'FUNCTION')
       order by usage_id)
      select distinct
             t1.object_name,
             t1.object_type,
             t1.name,
             t1.usage_id usage_context_id_begin,
             first_value(t2.usage_id) over (partition by t1.name order by t2.usage_id asc) - 1 usage_context_id_end
        from methods t1
        join methods t2 on (t2.object_name = t1.object_name and t2.object_type = t1.object_type and t2.usage_id > t1.usage_id)
       order by t1.usage_id) context_boundaries on (context_boundaries.object_name = t1.object_name and context_boundaries.object_type = t1.object_type)
 where t1.object_name = '&2'
   and usage = 'DECLARATION'
   and type = 'VARIABLE'
   and usage_context_id between context_boundaries.usage_context_id_begin and context_boundaries.usage_context_id_end
   and not exists (select 1
                     from user_identifiers t2
                    where t2.object_name = t1.object_name
                      and t2.name = t1.name
                      and t2.type = t1.type
                      and t2.usage_context_id between context_boundaries.usage_context_id_begin and context_boundaries.usage_context_id_end
                      and usage in ('REFERENCE', 'ASSIGNMENT'))
 order by line;

EXIT

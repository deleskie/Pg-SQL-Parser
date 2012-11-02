SELECT a FROM b union SELECT c FROM d union SELECT e FROM f ORDER BY a LIMIT 2 offset 3;
( select relname from pg_class order by relname limit 2 ) union all ( select datname from pg_database order by datname limit 2) order by 1;

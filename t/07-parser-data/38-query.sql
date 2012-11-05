WITH a AS (SELECT 1 as i) SELECT i FROM a;
WITH a AS (SELECT 'r'::TEXT as i), b as (SELECT relname, relkind FROM pg_class) SELECT b.* FROM b join a on b.relkind = a.i;
WITH recursive a AS ( SELECT 1 as i UNION ALL SELECT i + 1 FROM a WHERE i < 10 ) SELECT i FROM a;

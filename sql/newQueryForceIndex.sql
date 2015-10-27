USE app;

SET profiling = 1;

SELECT DISTINCT meta_key
FROM wp_postmeta FORCE INDEX (meta_key)
WHERE meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key
LIMIT 30;

SHOW PROFILES;

EXPLAIN
SELECT DISTINCT meta_key
FROM wp_postmeta FORCE INDEX (meta_key)
WHERE meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key
LIMIT 30;

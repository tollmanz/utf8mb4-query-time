USE app;

SET profiling = 1;

SELECT meta_key
FROM wp_postmeta FORCE INDEX (meta_key)
GROUP BY meta_key
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key
LIMIT 30;

SHOW PROFILES;

EXPLAIN
SELECT meta_key
FROM wp_postmeta FORCE INDEX (meta_key)
GROUP BY meta_key
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key
LIMIT 30;

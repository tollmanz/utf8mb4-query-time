USE app;

SELECT meta_key
FROM wp_postmeta
GROUP BY meta_key
HAVING meta_key NOT LIKE '_%'
ORDER BY meta_key
LIMIT 30;\G

EXPLAIN
SELECT meta_key
FROM wp_postmeta
GROUP BY meta_key
HAVING meta_key NOT LIKE '_%'
ORDER BY meta_key
LIMIT 30;\G

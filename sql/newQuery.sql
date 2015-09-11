USE app;

SELECT DISTINCT meta_key
FROM $wpdb->postmeta
WHERE meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '_%'
ORDER BY meta_key
LIMIT 30;

EXPLAIN
SELECT DISTINCT meta_key
FROM $wpdb->postmeta
WHERE meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '_%'
ORDER BY meta_key
LIMIT 30;

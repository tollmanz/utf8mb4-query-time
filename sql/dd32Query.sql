USE app;

SET profiling = 1;

SELECT DISTINCT meta_key
FROM wp_postmeta pm
    LEFT JOIN wp_posts p ON pm.post_id = p.id
WHERE p.post_type IN ( 'post', 'page', 'current-post-type-of-the-post')
   AND meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key DESC;

SHOW PROFILES;

EXPLAIN
SELECT DISTINCT meta_key
FROM wp_postmeta pm
    LEFT JOIN wp_posts p ON pm.post_id = p.id
WHERE p.post_type IN ( 'post', 'page', 'current-post-type-of-the-post')
   AND meta_key NOT BETWEEN '_' AND '_z'
HAVING meta_key NOT LIKE '\_%'
ORDER BY meta_key DESC;

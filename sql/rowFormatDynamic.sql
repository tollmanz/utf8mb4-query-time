USE app;
DROP INDEX meta_key ON wp_postmeta;
ALTER TABLE `wp_postmeta` ROW_FORMAT=DYNAMIC;
ALTER TABLE `wp_postmeta` ADD INDEX (`meta_key`);

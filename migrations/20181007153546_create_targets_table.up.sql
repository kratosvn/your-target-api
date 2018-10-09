CREATE TABLE `targets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX index_1 (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
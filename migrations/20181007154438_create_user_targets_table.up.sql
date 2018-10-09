CREATE TABLE `user_targets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `target_id` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(10) unsigned NOT NULL DEFAULT '0',
  `total_point` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `target_id` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp not NULL DEFAULT  current_timestamp ,
  `updated_at` timestamp not NULL DEFAULT  '2019-09-04 11:44:35' ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

BEGIN;
INSERT INTO `user` VALUES (1, '未留下大名', '123456', '13***', 1, '2019-09-04 11:44:35', '2019-09-04 11:44:38');
COMMIT;


CREATE TABLE admin (
    id int (11) NOT NULL AUTO_INCREMENT ,
    account varchar(50) not null ,
    password varchar(150) not null ,
    status tinyint not null default 1,
    created_at timestamp not null default current_timestamp ,
    updated_at timestamp not null default '2019-09-04 11:44:35',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number` bigint not null,
  `price` float not null ,
  `user_id` int not null default 1,
  `platform_id` int not null ,
  `title` varchar(255) NOT NULL default 0,
  `describe` varchar(255) NOT NULL default '',
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp not NULL DEFAULT  current_timestamp ,
  `updated_at` timestamp not NULL DEFAULT  '2019-09-04 11:44:35' ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `detail_url` varchar(255) NOT NULL default '',
  `search_url` varchar(255) not null default '',
  `sign` varchar(255) not null default '',
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp not NULL DEFAULT  current_timestamp ,
  `updated_at` timestamp not NULL DEFAULT  '2019-09-04 11:44:35' ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

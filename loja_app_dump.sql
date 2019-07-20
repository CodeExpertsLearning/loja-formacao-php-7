# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.31)
# Database: loja_app
# Generation Time: 2019-07-20 12:45:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `price` float(10,2) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `content`, `price`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Produto 1','Descrição Produto 1','',199.90,'produto-1','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(2,'Produto 2','Descrição Produto 1','',199.90,'produto-2','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(3,'Produto 3','Descrição Produto 1','',199.90,'produto-3','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(4,'Produto 4','Descrição Produto 1','',199.90,'produto-4','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(5,'Produto 5','Descrição Produto 1','',199.90,'produto-5','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(6,'Produto 6','Descrição Produto 1','',199.90,'produto-6','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(7,'Produto 7','Descrição Produto 1','',199.90,'produto-7','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(8,'Produto 8','Descrição Produto 1','',199.90,'produto-8','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(9,'Produto 9','Descrição Produto 1','',199.90,'produto-9','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(10,'Produto 10','Descrição Produto 1','',199.90,'produto-10','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(11,'Produto 11','Descrição Produto 1','',199.90,'produto-11','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(12,'Produto 12','Descrição Produto 1','',199.90,'produto-12','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(13,'Produto 13','Descrição Produto 1','',199.90,'produto-13','2019-07-06 10:35:22','2019-07-06 10:35:22'),
	(14,'Produto 14','Descrição Produto 1','',199.90,'produto-14','2019-07-06 10:35:22','2019-07-06 10:35:22');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_orders`;

CREATE TABLE `user_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `items` text COLLATE utf8_unicode_ci,
  `pagseguro_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagseguro_status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;

INSERT INTO `user_orders` (`id`, `user_id`, `items`, `pagseguro_code`, `pagseguro_status`, `created_at`, `updated_at`)
VALUES
	(1,3,'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"Produto 2\";s:5:\"price\";s:6:\"199.90\";s:4:\"slug\";s:9:\"produto-2\";s:3:\"qtd\";s:1:\"1\";}}','0',0,'2019-07-13 18:25:11','2019-07-13 18:25:11'),
	(2,3,'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"Produto 2\";s:5:\"price\";s:6:\"199.90\";s:4:\"slug\";s:9:\"produto-2\";s:3:\"qtd\";s:1:\"1\";}}','0',0,'2019-07-13 18:25:56','2019-07-13 18:25:56'),
	(3,3,'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"Produto 2\";s:5:\"price\";s:6:\"199.90\";s:4:\"slug\";s:9:\"produto-2\";s:3:\"qtd\";s:1:\"1\";}}','0',0,'2019-07-13 18:26:43','2019-07-13 18:26:43'),
	(4,3,'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"Produto 3\";s:5:\"price\";s:6:\"199.90\";s:4:\"slug\";s:9:\"produto-3\";s:3:\"qtd\";s:1:\"1\";}}','0',0,'2019-07-13 18:33:40','2019-07-13 18:33:40'),
	(5,3,'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"Produto 2\";s:5:\"price\";s:6:\"199.90\";s:4:\"slug\";s:9:\"produto-2\";s:3:\"qtd\";s:1:\"2\";}}','0',0,'2019-07-15 18:16:28','2019-07-15 18:16:28');

/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`)
VALUES
	(3,'Nanderson Sousa de Castro','nandokstro@gmail.com','$argon2i$v=19$m=1024,t=2,p=2$ZHdHZXJtVnVjeGpFNVBQOA$IyaViij6GenCaIu+IYf3lx96yGNbD2hO4QppRs9/8Ko','2019-07-13 17:51:05','2019-07-13 17:51:05'),
	(4,'João da Silva','email@email.com','$argon2i$v=19$m=1024,t=2,p=2$eXpZaERja01zQmtKb3llYg$WUhVx2HckjCDAL1J+nWZeu+FsdCZyfd+EBmkZXCpnpc','2019-07-13 18:02:13','2019-07-13 18:02:13');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

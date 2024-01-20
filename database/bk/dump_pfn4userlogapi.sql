-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pfn4userlogapi
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacoras`
--

DROP TABLE IF EXISTS `bitacoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacoras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bitacora` varchar(255) NOT NULL,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `usuario_email` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bitacoras_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `bitacoras_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoras`
--

LOCK TABLES `bitacoras` WRITE;
/*!40000 ALTER TABLE `bitacoras` DISABLE KEYS */;
INSERT INTO `bitacoras` VALUES (1,'Eum voluptatibus sed eos impedit. Modi nesciunt blanditiis quaerat adipisci. Possimus delectus quos laudantium sed et dolores.',10,'ondricka.nyah@gmail.com','1973-07-16','04:34:01','2024-01-13 14:20:38','2024-01-13 14:20:38'),(2,'Quos consequatur molestiae ut est aut alias consequatur. Dolores quae consectetur id. Error ullam voluptatum enim laborum provident. Et consequuntur velit et aut error alias molestiae.',6,'laurine73@fahey.com','2021-02-09','01:54:05','2024-01-13 14:20:38','2024-01-13 14:20:38'),(3,'Sint facilis ratione aperiam. Voluptatem assumenda dolorum non maxime rem voluptas. Cum in amet itaque quasi quod.',8,'fahey.katelyn@gmail.com','1984-04-05','13:06:01','2024-01-13 14:20:38','2024-01-13 14:20:38'),(4,'Laborum ut ullam est omnis sit eum. Voluptatem in est similique aut. Nemo voluptatibus amet perspiciatis laborum deleniti omnis facilis.',3,'gloria06@mohr.com','2014-06-04','01:04:48','2024-01-13 14:20:38','2024-01-13 14:20:38'),(5,'Sit possimus occaecati odio fuga voluptatem natus. Est exercitationem non earum qui. Doloribus beatae voluptatem laboriosam deleniti animi rerum facere.',6,'nikolaus.kathlyn@yahoo.com','1999-09-03','13:34:55','2024-01-13 14:20:38','2024-01-13 14:20:38'),(6,'Eligendi voluptatem qui quia exercitationem. Autem amet sint laboriosam consequatur est. Repudiandae quasi unde eius libero adipisci dolor laboriosam. Omnis et commodi qui.',9,'carmelo.oreilly@yahoo.com','2012-05-19','19:44:40','2024-01-13 14:20:38','2024-01-13 14:20:38'),(7,'Haciendo una modificacion desde Backend de la bitacora ID # 7',5,'doullorellana@gmail.com','2024-01-14','23:25:28','2024-01-13 14:20:38','2024-01-15 12:07:44'),(8,'Voluptatem omnis similique deserunt similique eum. Quod molestias et repudiandae perferendis. Quam quia voluptas error eius ullam maiores animi voluptatem.',1,'mhalvorson@gmail.com','1977-03-01','21:18:08','2024-01-13 14:20:38','2024-01-13 14:20:38'),(9,'Vitae totam iusto laboriosam quasi omnis et quas. Officiis deserunt recusandae voluptatem harum. Qui pariatur qui aspernatur ab. Nesciunt maiores ab at suscipit amet autem fugiat.',10,'erdman.elza@carroll.net','2019-06-08','09:54:47','2024-01-13 14:20:38','2024-01-13 14:20:38'),(11,'Haciendo una prueba desde Backend agregando un nuevo evento de bitacora',5,'doullorellana@gmail.com','2024-01-14','22:21:08','2024-01-15 11:21:35','2024-01-15 11:21:35'),(12,'Haciendo 2da prueba desde Backend agregando un nuevo evento de bitacora',7,'stanleyjared@gmail.com','2024-01-15','00:04:25','2024-01-15 12:03:49','2024-01-15 12:03:49');
/*!40000 ALTER TABLE `bitacoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enlaces`
--

DROP TABLE IF EXISTS `enlaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enlaces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pagina` bigint(20) unsigned NOT NULL,
  `id_rol` bigint(20) unsigned NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `usuario_creacion` varchar(255) NOT NULL,
  `usuario_modificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enlaces_id_pagina_foreign` (`id_pagina`),
  KEY `enlaces_id_rol_foreign` (`id_rol`),
  CONSTRAINT `enlaces_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `paginas` (`id`),
  CONSTRAINT `enlaces_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enlaces`
--

LOCK TABLES `enlaces` WRITE;
/*!40000 ALTER TABLE `enlaces` DISABLE KEYS */;
INSERT INTO `enlaces` VALUES (2,2,2,'Aspernatur illo optio iure tenetur. Laborum ducimus enim quia eum molestiae. Odit quia nostrum tempore atque dolorem est.','1998-07-21','2007-02-25','gerry.boyle@gmail.com','abby.weissnat@yahoo.com','2024-01-13 14:21:09','2024-01-13 14:21:09'),(4,2,2,'modificacion. Esta es otro enlace a la pagina de Google.com','2024-01-15','2024-01-15','doullorellana@gmail.com','admin@admin','2024-01-15 12:57:14','2024-01-15 13:00:43');
/*!40000 ALTER TABLE `enlaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_01_13_054000_create_personas_table',1),(6,'2024_01_13_054001_create_paginas_table',1),(7,'2024_01_13_054002_create_rols_table',1),(8,'2024_01_13_054003_create_usuarios_table',1),(9,'2024_01_13_054004_create_bitacoras_table',1),(10,'2024_01_13_054005_create_enlaces_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `usuario_creacion` varchar(255) NOT NULL,
  `usuario_modificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
INSERT INTO `paginas` VALUES (1,'roconnell@gmail.com','Zola Willms','quia','1985-06-25','1980-05-09','jeffry01@hotmail.com','heaney.dale@rogahn.net','2024-01-13 14:19:11','2024-01-13 14:19:11'),(2,'audie22@auer.net','Maurice Wehner','aut','2017-08-13','1994-08-28','stan29@gmail.com','lehner.abdul@hotmail.com','2024-01-13 14:19:11','2024-01-13 14:19:11'),(4,'https://www.facebook.com','Pagina de Facebook','Esta es la pagina oficial de Facebook','2024-01-15','2024-01-15','doullorellana@gmail.com','doullorellana@gmail.com','2024-01-13 14:19:11','2024-01-15 13:14:48'),(5,'justus.renner@ernser.biz','Shad Orn','architecto','2009-12-07','2012-11-16','johnpaul.gibson@gmail.com','durgan.della@macejkovic.com','2024-01-13 14:19:11','2024-01-13 14:19:11'),(6,'https://www.google.com','Pagina de Google','Esta es la pagina oficial de Google','2024-01-15','2024-01-15','doullorellana@gmail.com','doullorellana@gmail.com','2024-01-15 13:12:59','2024-01-15 13:12:59');
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `primer_nombre` varchar(255) NOT NULL,
  `segundo_nombre` varchar(255) NOT NULL,
  `primer_apellido` varchar(255) NOT NULL,
  `segundo_apellido` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `usuario_creacion` varchar(255) NOT NULL,
  `usuario_modificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Melany','Fermin','Walker','Fay','1986-08-21','1987-06-21','zconnelly@yahoo.com','ydouglas@hotmail.com','2024-01-13 14:18:53','2024-01-13 14:18:53'),(2,'Brielle','Holly','Krajcik','Koss','1980-05-29','1982-09-20','hammes.carolanne@huels.com','jaunita93@hotmail.com','2024-01-13 14:18:54','2024-01-13 14:18:54'),(3,'Marlen','Bobby','Hettinger','Goodwin','2013-12-15','1985-03-15','ofelia17@haley.com','emely.volkman@gmail.com','2024-01-13 14:18:54','2024-01-13 14:18:54'),(4,'Deontae','Kane','VonRueden','Swaniawski','1999-06-13','1994-09-19','cparisian@hotmail.com','coby93@johnson.org','2024-01-13 14:18:54','2024-01-13 14:18:54'),(5,'Diego','Bertrand','Weber','Lesch','2013-05-13','1999-05-13','xvandervort@luettgen.com','bfay@reinger.com','2024-01-13 14:18:54','2024-01-13 14:18:54'),(6,'Jerry','Reilly','Marquardt','Hills','1970-01-21','2020-04-01','hschinner@schmitt.com','ambrose08@hotmail.com','2024-01-13 14:18:54','2024-01-13 14:18:54'),(7,'Irving','Gillian','Willms','Zieme','2005-05-02','1978-03-18','ayundt@schroeder.com','hilpert.monty@gmail.com','2024-01-13 14:18:54','2024-01-13 14:18:54'),(8,'Devante','Stefanie','Becker','Bergstrom','2000-01-05','1976-11-02','olang@macejkovic.com','botsford.veda@leffler.info','2024-01-13 14:18:54','2024-01-13 14:18:54'),(9,'Vince','Alibaba','Kilback','Parker','1998-08-11','2024-01-15','janet88@yahoo.com','doullorellana@gmail.com','2024-01-13 14:18:54','2024-01-15 12:39:53'),(11,'Doull','Stanley','Orellana','David','2024-01-15','2024-01-15','doullorellana@gmail.com','doullorellana@gmail.com','2024-01-15 12:38:19','2024-01-15 12:38:19');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `usuario_creacion` varchar(255) NOT NULL,
  `usuario_modificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','1991-12-16','1992-11-06','vgutmann@gmail.com','ipowlowski@mccullough.info','2024-01-13 14:19:37','2024-01-13 14:19:37'),(2,'Usuario','2007-11-23','1970-02-24','mills.carmela@yahoo.com','kameron36@gmail.com','2024-01-13 14:19:37','2024-01-13 14:19:37');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_persona` bigint(20) unsigned NOT NULL,
  `usuario_email` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_rol` bigint(20) unsigned NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `usuario_creacion` varchar(255) NOT NULL,
  `usuario_modificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarios_id_persona_foreign` (`id_persona`),
  KEY `usuarios_id_rol_foreign` (`id_rol`),
  CONSTRAINT `usuarios_id_persona_foreign` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`),
  CONSTRAINT `usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,2,'lavon.smith@stehr.net','EsoVk)qCB(/','1','1986-06-17',1,'2012-12-13','1987-08-20','ujakubowski@yahoo.com','kkirlin@gmail.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(2,2,'samantha.yost@gmail.com','$FBy4u.3sA<fb&RJX#<O','1','1987-03-18',2,'1995-06-13','1997-11-09','josiah.gerlach@blick.com','owen.prosacco@hotmail.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(3,7,'georgette60@hodkiewicz.biz','\\t+rx|la2D$:,3','2','2009-11-11',2,'2000-07-16','1986-07-13','mdamore@streich.info','crunolfsdottir@gmail.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(4,7,'elwyn73@yahoo.com','S7rs\"h2FBHY&u=5','1','1979-08-04',1,'1998-02-21','1986-12-29','ima.mohr@yahoo.com','shirley.schneider@hotmail.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(5,9,'maverick.jones@yahoo.com','IxC]xzX','1','2007-07-15',2,'1970-12-16','2007-04-19','lpagac@gmail.com','elvera69@brakus.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(6,8,'lulu07@hotmail.com','O=~jObR?\'MjZp','2','1979-02-02',2,'1974-06-19','1994-03-23','noble23@hotmail.com','zskiles@yahoo.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(7,7,'nsanford@yahoo.com','[%)&ehsI~V','2','2000-04-13',1,'2009-03-05','2018-10-26','runolfsson.adela@hotmail.com','hsipes@hotmail.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(8,7,'thora26@gmail.com','Jy*S+Q6D~$I*@','1','2023-09-09',1,'1988-06-18','2018-11-25','dicki.connie@hotmail.com','bettye.lindgren@yahoo.com','2024-01-13 14:20:20','2024-01-13 14:20:20'),(9,9,'von.josefina@yahoo.com','oSZMzBbLf','1','1987-12-10',2,'1988-08-28','2024-01-15','jade31@padberg.com','doullorellana@gmail.com','2024-01-13 14:20:20','2024-01-15 12:19:03'),(10,1,'madaline90@hoppe.com','\\{B3,L\\/f5\"','1','2011-12-28',2,'1975-03-14','1972-07-31','sipes.justyn@welch.com','wgulgowski@gottlieb.net','2024-01-13 14:20:20','2024-01-13 14:20:20'),(11,5,'admin@admin','admin','1','1981-01-05',1,'2024-01-15','2024-01-15','doullorellana@gmail.com','doullorellana@gmail.com','2024-01-15 12:16:15','2024-01-15 12:16:15');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pfn4userlogapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20  3:10:51

use cepavif;

ALTER TABLE `users_servicios` DROP CONSTRAINT `fk_us_servicios`;

ALTER TABLE `users_servicios`
  ADD CONSTRAINT `fk_us_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);
  
DROP TABLE IF EXISTS oficios_solicitados;
DROP TABLE IF EXISTS tipos_de_servicios;
DROP TABLE IF EXISTS asistentes_a_servicio;
DROP TABLE IF EXISTS users_servicios;
DROP TABLE IF EXISTS asistencias;
DROP TABLE IF EXISTS sesiones;
DROP TABLE IF EXISTS detalle_de_servicio;
DROP TABLE IF EXISTS servicios;
DROP TABLE IF EXISTS asistentes;
DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS users;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "-06:00";

CREATE TABLE `asistencias` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fecha_de_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `asistente_id` int NOT NULL,
  `sesion_id` int NOT NULL,
  `observaciones` text DEFAULT ''
) ENGINE=InnoDB;

CREATE TABLE `asistentes` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `fecha_de_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(40)  NOT NULL,
  `apellido_paterno` varchar(30)  NOT NULL,
  `apellido_materno` varchar(30)  DEFAULT NULL,
  `sexo` varchar(1)  NOT NULL DEFAULT 'H',
  `folio` varchar(25)  DEFAULT NULL,
  `imputado` tinyint(1) DEFAULT '0',
  `numero_de_causa` varchar(12)  DEFAULT NULL,
  `municipio` varchar(20)  DEFAULT NULL,
  `supervisor` varchar(60)  DEFAULT NULL,
  `numero_de_telefono` varchar(15)  DEFAULT NULL,
  `fecha_de_canalizacion` date DEFAULT NULL,
  `fecha_de_entrevista` date DEFAULT NULL,
  `notas_psicologicas` text ,
  `observaciones` text ,
  `entrevista` tinyint(1) DEFAULT '0',
  `pre_test` tinyint(1) DEFAULT '0',
  `post_test` tinyint(1) DEFAULT '0',
  `evaluacion` tinyint(1) DEFAULT '0',
  `suspendido` tinyint(1) DEFAULT '0',
  `fecha_de_suspencion` date DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `asistentes_a_servicio` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `asistente_id` int NOT NULL,
  `servicio_id` int NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `authorities` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` int NOT NULL,
  `authority` varchar(30)  NOT NULL,
  `nombre` varchar(40)  DEFAULT NULL
) ENGINE=InnoDB;


CREATE TABLE `detalle_de_servicio` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_de_grupo` varchar(9)  DEFAULT NULL,
  `fecha_de_inicio` date DEFAULT NULL,
  `fecha_de_cierre` date DEFAULT NULL,
  `hora` varchar(30)  DEFAULT NULL,
  `abierto` tinyint(1) NOT NULL DEFAULT '1',
  `servicio_id` int NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `oficios_solicitados` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `fecha_de_solicitud` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_de_respuesta` timestamp NULL DEFAULT NULL,
  `asistente_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `enviado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB;

CREATE TABLE `servicios` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `tipo_de_servicio_id` int NOT NULL,
  `nombre` varchar(50)  DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cerrado` tinyint(1) NOT NULL,
  `fecha_de_cierre` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `sesiones` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titulo` varchar(50)  DEFAULT NULL,
  `fecha_de_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `servicio_id` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(12)  DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `tipos_de_servicios` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(40)  NOT NULL
) ENGINE=InnoDB;


CREATE TABLE `users` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(50)  NOT NULL,
  `password` varchar(64)  NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `nombre` varchar(40)  NOT NULL,
  `apellido_paterno` varchar(30)  NOT NULL,
  `apellido_materno` varchar(30)  DEFAULT NULL,
  `ultimo_acceso` timestamp NULL DEFAULT NULL,
  `accessToken` varchar(65) NOT NULL,
  `authKey` varchar(65)  NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE `users_servicios` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `user_id` int NOT NULL,
  `servicio_id` int NOT NULL
) ENGINE=InnoDB;

ALTER TABLE `asistencias`
  ADD UNIQUE KEY `index_asistencias_de_sesion` (`asistente_id`,`sesion_id`),
  ADD KEY `fk_asistencias_sesiones` (`sesion_id`);

ALTER TABLE `asistentes_a_servicio`
  ADD UNIQUE KEY `index_asistentes_de_servicio` (`asistente_id`,`servicio_id`),
  ADD KEY `fk_ag_servicios` (`servicio_id`);

ALTER TABLE `authorities`
  ADD UNIQUE KEY `index_auth_user_id` (`user_id`,`authority`);

ALTER TABLE `detalle_de_servicio`
  ADD KEY `servicio_id` (`servicio_id`);

ALTER TABLE `oficios_solicitados`
  ADD KEY `fk_oficios_asistentes` (`asistente_id`),
  ADD KEY `fk_oficios_usuarios` (`usuario_id`);

ALTER TABLE `servicios`
  ADD KEY `tipo_de_servicio_id` (`tipo_de_servicio_id`);

ALTER TABLE `sesiones`
  ADD KEY `fk_sesiones_servicio` (`servicio_id`);

ALTER TABLE `users_servicios`
  ADD UNIQUE KEY `index_users_grupos` (`user_id`,`servicio_id`),
  ADD KEY `fk_ug_grupos` (`servicio_id`) USING BTREE;

ALTER TABLE `asistencias`
  ADD CONSTRAINT `fk_asistencias_asistentes` FOREIGN KEY (`asistente_id`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `fk_asistencias_sesiones` FOREIGN KEY (`sesion_id`) REFERENCES `sesiones` (`id`);

ALTER TABLE `asistentes_a_servicio`
  ADD CONSTRAINT `fk_ag_asistentes` FOREIGN KEY (`asistente_id`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `fk_ag_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `detalle_de_servicio`
  ADD CONSTRAINT `detalle_de_servicio_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

ALTER TABLE `oficios_solicitados`
  ADD CONSTRAINT `fk_oficios_asistentes` FOREIGN KEY (`asistente_id`) REFERENCES `asistentes` (`id`),
  ADD CONSTRAINT `fk_oficios_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`tipo_de_servicio_id`) REFERENCES `tipos_de_servicios` (`id`) ON DELETE CASCADE;

ALTER TABLE `sesiones`
  ADD CONSTRAINT `fk_sesiones_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

ALTER TABLE `users_servicios`
  ADD CONSTRAINT `fk_us_servicios` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`),
  ADD CONSTRAINT `fk_us_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

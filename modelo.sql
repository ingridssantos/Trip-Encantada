CREATE DATABASE tripencantada;

USE tripencantada;

CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nome_user` varchar(100) DEFAULT NULL,
  `email_user` varchar(70) DEFAULT NULL,
  `senha_user` char(8) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `promo` (
  `id_promo` int NOT NULL AUTO_INCREMENT,
  `data_promo` date DEFAULT NULL,
  `percent_promo` double DEFAULT NULL,
  PRIMARY KEY (`id_promo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `viagem` (
  `id_viagem` int NOT NULL AUTO_INCREMENT,
  `origem_viagem` varchar(100) DEFAULT NULL,
  `destino_viagem` varchar(100) DEFAULT NULL,
  `ida_viagem` date DEFAULT NULL,
  `volta_viagem` date DEFAULT NULL,
  `fk_id_user` int DEFAULT NULL,
  `fk_id_promocao` int DEFAULT NULL,
  PRIMARY KEY (`id_viagem`),
  KEY `fk_id_user` (`fk_id_user`),
  KEY `fk_id_promocao` (`fk_id_promocao`),
  CONSTRAINT `viagem_cadastro_ibfk_1` FOREIGN KEY (`fk_id_user`) REFERENCES `usuario` (`id_user`),
  CONSTRAINT `viagem_cadastro_ibfk_2` FOREIGN KEY (`fk_id_promocao`) REFERENCES `promocao` (`id_promocao`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

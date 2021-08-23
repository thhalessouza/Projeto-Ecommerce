create database db_connection_oceans;

use db_connection_oceans;


CREATE TABLE `Categoria` (
	`id` bigint NOT NULL,
	`Embalagens` varchar(255) NOT NULL,
	`Material` varchar(255) NOT NULL,
	`Ativo` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produtos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Preço` int NOT NULL,
	`Descrição` varchar(1000) NOT NULL,
	`Unidade` int NOT NULL,
	`Categoria_id` varchar(255) NOT NULL,
	`Usuario_id` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuário` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Senha` varchar(5000) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produtos` ADD CONSTRAINT `Produtos_fk0` FOREIGN KEY (`Categoria_id`) REFERENCES `Categoria`(`id`);

ALTER TABLE `Produtos` ADD CONSTRAINT `Produtos_fk1` FOREIGN KEY (`Usuario_id`) REFERENCES `Usuário`(`id`);


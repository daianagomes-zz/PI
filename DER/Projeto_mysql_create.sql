CREATE TABLE `tb_Usuario` (
	`id` bigint(10) NOT NULL AUTO_INCREMENT,
	`nomecompleto` varchar(255) NOT NULL,
	`e-mail` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_categoria` (
	`id` bigint(10) NOT NULL AUTO_INCREMENT,
	`nomecateg` varchar(255) NOT NULL,
	`setor` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_produto` (
	`id` bigint(10) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL(10,2) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`categora_id` bigint(10) NOT NULL,
	`situacao` BOOLEAN NOT NULL,
	`usuario_id` bigint(10) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk0` FOREIGN KEY (`categora_id`) REFERENCES `tb_categoria`(`id`);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_Usuario`(`id`);


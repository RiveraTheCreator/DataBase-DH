CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;
CREATE TABLE `gestion_de_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estatus` varchar(10) NOT NULL,
  `usuario_id` varchar(30) NOT NULL,
  `nota_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `notas_por_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nota` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nota` (`id_nota`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `notas_por_categoria_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_por_categoria_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
);
CREATE TABLE `usuarios` (
  `nombre` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
);
INSERT INTO appnotas.categorias (genero) VALUES
	 ('Revista'),
	 ('Ensayo'),
	 ('Academico'),
	 ('Amor'),
	 ('Suspenso'),
	 ('Drama'),
	 ('Novela'),
	 ('Accion'),
	 ('Fantasia'),
	 ('Terror');
INSERT INTO appnotas.notas (titulo,fecha_creacion,fecha_modificacion,descripcion) VALUES
	 ('Apunte IP','2000-01-01','1000-01-01 00:00:00',''),
	 ('Apunte ACM','2010-01-01','1000-01-01 00:00:00',''),
	 ('Apunte TCMP','2020-01-01','1000-01-01 00:00:00',''),
	 ('Apunte ARP','2000-01-01','1000-01-01 00:00:00',''),
	 ('Apunte html','2005-01-01','1000-01-01 00:00:00',''),
	 ('Apunte JS','2008-01-01','1000-01-01 00:00:00',''),
	 ('Tarea CSS','2020-02-01','1000-01-01 00:00:00',''),
	 ('Mercados Nacionales','2060-01-01','1000-01-01 00:00:00',''),
	 ('Convertir valores analogicos a digital','2016-01-01','1000-01-01 00:00:00',''),
	 ('Diodos','1000-01-01','2010-01-02 00:00:00','');
INSERT INTO appnotas.usuarios (nombre,email) VALUES
	 ('Azul','azula@gmail.com'),
	 ('Juan','juan@gmail.com'),
	 ('Lilian','LiLIth@gmail.com'),
	 ('Pepe','pepe@gmail.com'),
	 ('Pedro','peterP@gmail.com'),
	 ('Romeo','r0r0@gmail.com'),
	 ('Rico','ricolino@gmail.com'),
	 ('Roberto','robert@gmail.com'),
	 ('Rosa','rosa@gmail.com'),
	 ('Saul','saul@gmail.com');
insert into appnotas.gestion_de_notas (id, estatus,usuario_id,nota_id) values 
(default,'Creada',1,5),
(default,'Creada',1,3),
(default,'Creada',1,),
(default,'Creada',1),
(default,'Creada',1),

	 
insert into appnotas.notas_por_categoria (id, id_nota,id_categoria) values
 (default,5,1),
 (default,4,2),
 (default,3,1),
 (default,2,3),
 (default,1,1),
 (default,6,4),
 (default,7,1),
 (default,8,5),
 (default,9,1),
 (default,10,6),
 (default,2,7);

 INSERT INTO appnotas.gestion_de_notas(id, estatus,usuario_id,nota_id) VALUES
 (default,'creada',2,1),
 (default,'creada',3,9),
 (default,'eliminada',2,6),
 (default,'creada',4,2),
 (default,'creada',5,8),
 (default,'editada',2,8),
 (default,'creada',7,6),
 (default,'editada',9,5),
 (default,'creada',1,4),
 (default,'eliminada',2,3);
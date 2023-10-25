CREATE DATABASE libreria;
USE libreria;

CREATE TABLE pais(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(155) NOT NULL,
    nacionalidad VARCHAR(155) NULL
);

CREATE TABLE autor(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(155) NOT NULL,
    idpais SMALLINT,
    FOREIGN KEY (idpais) 
    REFERENCES pais(id)
);

CREATE TABLE cliente(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(155) NOT NULL,
    idpais SMALLINT,
    FOREIGN KEY (idpais) 
    REFERENCES pais(id)
);

CREATE TABLE categoria(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL
);

CREATE TABLE libro(
    id SMALLINT NOT NULL PRIMARY KEY,
    titulo VARCHAR (155) NOT NULL,
    año INT NOT NULL,
    precio SMALLINT,
    stock SMALLINT,
    idautor SMALLINT,
    idcategoria SMALLINT,
    FOREIGN KEY (idautor) REFERENCES AUTOR(id),
    FOREIGN KEY (idcategoria) REFERENCES CATEGORIA(id)
);

CREATE TABLE pedido(
    id SMALLINT NOT NULL PRIMARY KEY,
    fecha VARCHAR (155) NOT NULL,
    idcliente SMALLINT,
    FOREIGN KEY (idcliente) REFERENCES cliente(id)
);

CREATE TABLE detallepedido(
    id SMALLINT NOT NULL PRIMARY KEY,
    cantidad SMALLINT,
    preciototal SMALLINT,
    idlibro SMALLINT,
    idpedido SMALLINT,
    FOREIGN KEY (idlibro) REFERENCES libro(id),
    FOREIGN KEY (idpedido) REFERENCES pedido(id)
);

Insert into pais  	(id, nombre, nacionalidad)		values (	1	, "Colombia" ,	"Colombiano/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	2	, "Chile" ,	"Chileno/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	3	, "Mexico" ,	"Mexicano/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	4	, "Venezuela" ,	"Venezolano/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	5	, "Uruguay" ,	"Uruguayo/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	6	, "Paraguay" ,	"Paraguayo/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	7	, "Peru" ,	"Peruano/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	8	, "Panama" ,	"Panameño/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	9	, "Argentina" ,	"Argentino/a");
Insert into pais  	(id, nombre, nacionalidad)		values (	10	, "Bolivia" ,	"Boliviano/a");

Insert into autor  	(id, nombre, idpais) values (1, "William" , 1);
Insert into autor  	(id, nombre, idpais) values (2, "Santiago" , 1);
Insert into autor  	(id, nombre, idpais) values (3, "Benildo" , 1);
Insert into autor  	(id, nombre, idpais) values (4, "Valentina" , 10);
Insert into autor  	(id, nombre, idpais) values (5, "Sebastian" , 10);
Insert into autor  	(id, nombre, idpais) values (6, "Esteban" , 7);
Insert into autor  	(id, nombre, idpais) values (7, "Lucio", 9);
Insert into autor  	(id, nombre, idpais) values (8, "Juan", 5);
Insert into autor  	(id, nombre, idpais) values (9, "Camilo", 4);
Insert into autor  	(id, nombre, idpais) values (10, "Kamilo", 2);

Insert into cliente  	(id, nombre, idpais) values (1, "Ana" , 10);
Insert into cliente  	(id, nombre, idpais) values (2, "Eva" , 10);
Insert into cliente  	(id, nombre, idpais) values (3, "Hugo" , 10);
Insert into cliente  	(id, nombre, idpais) values (4, "Ivan" , 5);
Insert into cliente  	(id, nombre, idpais) values (5, "Lara" , 5);
Insert into cliente  	(id, nombre, idpais) values (6, "Leo" , 5);
Insert into cliente  	(id, nombre, idpais) values (7, "Mar", 8);
Insert into cliente  	(id, nombre, idpais) values (8, "Nora", 6);
Insert into cliente  	(id, nombre, idpais) values (9, "Raul", 3);
Insert into cliente  	(id, nombre, idpais) values (10, "Luna", 4);

Insert into categoria (id, nombre) values (1, "Novela");
Insert into categoria (id, nombre) values (2, "Literatura");
Insert into categoria (id, nombre) values (3, "Cientifico");
Insert into categoria (id, nombre) values (4, "Infantil");
Insert into categoria (id, nombre) values (5, "Tecnico");
Insert into categoria (id, nombre) values (6, "Educativo");
Insert into categoria (id, nombre) values (7, "Divulgativo");
Insert into categoria (id, nombre) values (8, "Autoayuda");
Insert into categoria (id, nombre) values (9, "Psicologia");
Insert into categoria (id, nombre) values (10, "Religioso");

Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (1, "Matematica Avanzada I", 1980, 1500, 10, 1, 3);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (2, "Matematica Avanzada II", 2000, 2000, 100, 1, 3);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (3, "Matematica Avanzada III", 1955, 1000, 20, 1, 3);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (4, "Inteligencia Emocional", 1988, 1250, 250, 7, 9);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (5, "La psicologia del ser", 1999, 1300, 350, 7, 9);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (6, "El humano y su psicologia", 2000, 1700, 240, 7, 9);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (7, "Biblia catolica", 2005, 8000, 100, 5, 10);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (8, "La historia de Jesus", 2006, 5000, 101, 5, 10);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (9, "Lectura Critica II", 2007, 3500, 100, 6, 6);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (10, "Informatica aplicada", 2000, 2500, 450, 9, 6);
Insert into libro (id, titulo, año, precio, stock, idautor, idcategoria) values (11, "Matematicas 6°", 2004, 2580, 45, 10, 6);

Insert into pedido (id, fecha, idcliente) values (1, "octubre-18-2023", 1);
Insert into pedido (id, fecha, idcliente) values (2, "octubre-18-2023", 2);
Insert into pedido (id, fecha, idcliente) values (3, "octubre-18-2023", 3);
Insert into pedido (id, fecha, idcliente) values (4, "octubre-18-2023", 4);
Insert into pedido (id, fecha, idcliente) values (5, "octubre-18-2023", 5);
Insert into pedido (id, fecha, idcliente) values (6, "octubre-18-2023", 6);
Insert into pedido (id, fecha, idcliente) values (7, "octubre-18-2023", 1);
Insert into pedido (id, fecha, idcliente) values (8, "octubre-18-2023", 7);
Insert into pedido (id, fecha, idcliente) values (9, "octubre-18-2023", 8);
Insert into pedido (id, fecha, idcliente) values (10, "octubre-18-2023", 9);

Insert into detallepedido (id, cantidad, preciototal, idlibro, idpedido) values (1, 2, );

select * from pais where nombre="Colombia";
select * from autor where id=10;
select * from cliente where id=5;
select * from pais where nacionalidad="Colombiano/a";
select * from autor where nombre="Valentina";


select * from libro WHERE idcategoria=3;
select * from libro WHERE idautor=1;
select * from libro WHERE idcategoria=9;
select * from cliente WHERE idpais=10;

SELECT autor.nombre, libro.titulo FROM autor, libro WHERE autor.id=idautor;

SELECT autor.nombre, libro.titulo, categoria.nombre FROM autor, libro, categoria WHERE autor.id=idautor && categoria.id=idcategoria;

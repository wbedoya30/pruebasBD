CREATE DATABASE libreria;
USE libreria;
CREATE TABLE pais(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL,
    nacionalidad VARCHAR(155) NULL 
);



CREATE TABLE autor(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL,
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
    año SMALLINT,
    precio SMALLINT,
    stock SMALLINT,
    idautor SMALLINT,
    idcategoria SMALLINT,
    FOREIGN KEY (idautor)
    REFERENCES autor (id),
    FOREIGN KEY (idcategoria)
    REFERENCES categoria(id)
);
CREATE TABLE cliente(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    idpais SMALLINT,
    FOREIGN KEY (idpais) 
    REFERENCES pais (id)
);

CREATE TABLE pedido(
    id SMALLINT NOT NULL PRIMARY KEY,
    fecha VARCHAR(20),
    idcliente SMALLINT,
    FOREIGN KEY (idcliente)
    REFERENCES cliente (id)
);
CREATE TABLE detallepedido (
    id SMALLINT NOT NULL PRIMARY KEY,
    cantidad SMALLINT,
    preciototal INT,
    idlibro SMALLINT,
    idpedido SMALLINT,
    FOREIGN KEY (idlibro)
    REFERENCES libro (id),
    FOREIGN KEY (idpedido)
    REFERENCES pedido (id)
);

INSERT INTO pais (id, nombre, nacionalidad) VALUES (1,"Colombia","Colombiano");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (2,"Venezuela","Venezolano");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (3,"Chile","chileno/a5​");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (4,"Bolivia","Boliviano");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (5,"Aruba","Arubeño");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (6,"Ecuador","Ecuatoriano");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (7,"Uruguay","Uruguayo");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (8,"Guatemala","Guatemalteco");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (9,"El salvador","Salvadoreño");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (10,"Paraguay","Paraguayo");

INSERT INTO autor (id, nombre, idpais) VALUES (1,"William",2);
INSERT INTO autor (id, nombre, idpais) VALUES (2,"David",3);
INSERT INTO autor (id, nombre, idpais) VALUES (3,"Santiago",1);
INSERT INTO autor (id, nombre, idpais) VALUES (4,"Arley",4);
INSERT INTO autor (id, nombre, idpais) VALUES (5,"Camila",5);
INSERT INTO autor (id, nombre, idpais) VALUES (6,"Dayana",7);
INSERT INTO autor (id, nombre, idpais) VALUES (7,"Natalia",1);
INSERT INTO autor (id, nombre, idpais) VALUES (8,"Alexa",2);
INSERT INTO autor (id, nombre, idpais) VALUES (9,"Angie",1);
INSERT INTO autor (id, nombre, idpais) VALUES (10,"Paola",1);

INSERT INTO categoria (id, nombre) VALUES (1,"Ficcion");
INSERT INTO categoria (id, nombre) VALUES (2,"Narrativo");
INSERT INTO categoria (id, nombre) VALUES (3,"Horror");
INSERT INTO categoria (id, nombre) VALUES (4,"Suspenso");
INSERT INTO categoria (id, nombre) VALUES (5,"Thriller");
INSERT INTO categoria (id, nombre) VALUES (6,"Romance");
INSERT INTO categoria (id, nombre) VALUES (7,"Accion");
INSERT INTO categoria (id, nombre) VALUES (8,"Aventura");
INSERT INTO categoria (id, nombre) VALUES (9,"Novela");
INSERT INTO categoria (id, nombre) VALUES (10,"Ciencia");

INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (1,"La divina comedia","2005","65000",10,1,2);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (2,"¿Y si quedamos como amigos?","2004","70000",20,4,);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (3,"Amanecer","1992","20000",4,2,4);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (4,"Crepusculo","1993","30000",5,5,6);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (5,"Harry Potter","2009","40000",3,7,7);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (6,"Cenicienta","2006","25000",2,4,2);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (7,"Pinocho","2003","28000",5,2,4);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (8,"Baldor","1900","33000",7,3,6);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (9,"Cien años de soledad","1993","17000",8,8,8);
INSERT INTO libro (id, titulo, año,precio,stock,idautor,idcategoria) VALUES (10,"Juventud en extasis ","2010","43000",5,9,9);

Insert into pedido (id, fecha, idcliente) values (1, "octubre-1-2023", 1);
Insert into pedido (id, fecha, idcliente) values (2, "octubre-1-2023", 2);
Insert into pedido (id, fecha, idcliente) values (3, "octubre-1-2023", 3);
Insert into pedido (id, fecha, idcliente) values (4, "octubre-1-2023", 4);
Insert into pedido (id, fecha, idcliente) values (5, "octubre-1-2023", 5);
Insert into pedido (id, fecha, idcliente) values (6, "octubre-1-2023", 6);
Insert into pedido (id, fecha, idcliente) values (7, "octubre-1-2023", 1);
Insert into pedido (id, fecha, idcliente) values (8, "octubre-1-2023", 7);
Insert into pedido (id, fecha, idcliente) values (9, "octubre-1-2023", 8);
Insert into pedido (id, fecha, idcliente) values (10, "octubre-1-2023", 9);

INSERT INTO cliente (id, nombre, idpais) VALUES (	1	,"	William	",	2	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	2	,"	David	",	3	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	3	,"	Santiago	",	1	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	4	,"	Arley	",	4	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	5	,"	Camila	",	5	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	6	,"	Dayana	",	7	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	7	,"	Natalia	",	1	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	8	,"	Alexa	",	2	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	9	,"	Angie	",	1	);	
INSERT INTO cliente (id, nombre, idpais) VALUES (	10	,"	Paola	",	1	);	

constraint unique_iten unique (idpedido,idlibro)
CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE pais(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL,
    nacionalidad VARCHAR(155) NULL 
);



CREATE TABLE AUTOR(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL,
    idpais SMALLINT,
    FOREIGN KEY (idpais) 
    REFERENCES pais(id)

);

CREATE TABLE EDITORIAL(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL,
    idpais SMALLINT,
    FOREIGN KEY (idpais) 
    REFERENCES pais(id)
);

CREATE TABLE LIBRO(
    id SMALLINT NOT NULL PRIMARY KEY,
    titulo VARCHAR (155) NOT NULL,
    año INT NOT NULL,
    precio SMALLINT,
    idautor SMALLINT,
    ideditorial SMALLINT,
    FOREIGN KEY (idautor)
    REFERENCES AUTOR(id),
    FOREIGN KEY (ideditorial)
    REFERENCES EDITORIAL(id)
);

CREATE TABLE CATEGORIA(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL
);

CREATE TABLE LIBROXCATEGORIA(
    id SMALLINT NOT NULL PRIMARY KEY,
    idlibro SMALLINT,
    idcategoria SMALLINT,
    FOREIGN KEY (idlibro)
    REFERENCES LIBRO(id),
    FOREIGN KEY (idcategoria)
    REFERENCES CATEGORIA(id)

);

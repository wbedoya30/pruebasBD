--CRUD: Create, Read, Update, Delete
Insertar 
Leer
Actualizar
Borrar

REGISTRO

INSERT INTO pais()
SELECT * FROM pais;

INSERT INTO pais (id, nombre, nacionalidad) VALUES (1,"Anguila","anguilano/a");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (2,"Antigua y Barbuda","antiguano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (3,"Antillas Neerlandesas","antillano/a.6");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (4,"Argentina","argentino/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (5,"Aruba","arubeño/a.7");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (6,"Bahamas","bahameño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (7,"Barbados","barbadense5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (8,"Belice","beliceño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (9,"Bermudas","bermudeño/a8");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (10,"Bolivia","boliviano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (11,"Brasil","brasileño/a o brasilero/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (12,"Canadá","canadiense5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (13,"Chile","chileno/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (14,"","");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (15,"Colombia","colombiano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (16,"Costa Rica","costarricense5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (17,"","coloquialmentetico/a.9");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (18,"Cuba","cubano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (19,"Curazao","curazoleño/a10");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (20,"Dominica","dominiqués, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (21,"Ecuador","ecuatoriano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (22,"El Salvador","salvadoreño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (23,"","coloquialmentecuscatleco/a11");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (24,"Estados Unidos","estadounidense5 o");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (25,"","angloamericano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (26,"","coloquialmentegringo/a");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (27,"Granada","granadino/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (28,"Groenlandia","groenlandés, -sa13");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (29,"Guatemala","guatemalteco/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (30,"","coloquialmentechapín, -na14");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (31,"Guyana","guyanés, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (32,"Haití","haitiano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (33,"Honduras","hondureño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (34,"","coloquialmentecatracho /a15");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (35,"Islas Caimán","caimanés, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (36,"Islas Malvinas","malvinense, malvinero/a");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (37,"Islas Turcas y Caicos","turcocaiqueño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (38,"Islas Vírgenes Británicas","virgenense británico/a");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (39,"Islas Vírgenes de los Estados Unidos","virgenense estadounidense");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (40,"Jamaica","jamaicano/a o jamaiquino/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (41,"México","Mexicano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (42,"Montserrat","monserratino/a7");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (43,"","");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (44,"Nicaragua","nicaragüense, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (45,"","despectivamentemuco/a16");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (46,"Panamá","panameño/a5 o canalero/a.17");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (47,"","");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (48,"Paraguay","paraguayo/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (49,"Perú","peruano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (50,"Puerto Rico","puertorriqueño/a, boricua5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (51,"República Dominicana","dominicano/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (52,"San Bartolomé","sanbartolomeano/a7");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (53,"San Cristóbal y Nieves","sancristobaleño/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (54,"San Pedro y Miquelón","sanpedrino/a7");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (55,"San Vicente y las Granadinas","sanvicentino/a5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (56,"Santa Elena, Ascensión y Tristán de Acuña","santaheleno/a7");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (57,"Santa Lucía","santalucense5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (58,"San Martín","sanmartinés, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (59,"Surinam","surinamés, -sa5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (60,"Trinidad y Tobago","trinitense5");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (61,"Uruguay","uruguayo/a5 u");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (62,"","oriental19");
INSERT INTO pais (id, nombre, nacionalidad) VALUES (63,"Venezuela","venezolano/a5");




INSERT INTO autor( id, nombre) VALUES (1, "Gonzalo Lopez"),(2, "Pepito Pérez"),(3,"Jacinta Súarez");
INSERT INTO autor (id, nombre, idpais) VALUES (4, "Santiago Lopez",11);

SELECT * FROM pais WHERE id>9 && id <15;
SELECT * FROM autor;
update autor set idpais=2;
update autor set idpais=22 where id=2;
DELETE FROM pais WHERE id=22;

SELECT autor.nombre, pais.nombre FROM autor, pais WHERE pais.id=idpais;
UPDATE autor SET idpais=2 WHERE id=1;
UPDATE autor SET idpais=2 WHERE id>=1 and id<=100;
SELECT autor.nombre, pais.nombre FROM autor, pais WHERE pais.id=autor.idpais;
DElete from pais where nombre is null;
delete from pais where nombre="";
select nombre, nacionalidad from pais where nombre like 'C%';

CREATE table cancion(
    id int key PRIMARY auto_increment
)
La secuencia de sentencias que se han sido la siguiente

La Tabla se puede encontrar en este mismo repo.

1. Cree una tabla llamada CURSO con los atributos:
Código de curso (clave primaria, entero no nulo)
Nombre (varchar no nulo)
Descripcion (varcha)
Turno (varchar no nulo)

CREATE TABLE CURSO (
  Codigo INT NOT NULL,
  Nombre varchar(45) NOT NULL,
  Descripcion VARCHAR(45) NOT NULL,
  Turno VARCHAR(45) Not NULL,
  PRIMARY KEY (Codigo)
);

2.Agregue un campo “cupo” de tipo numérico

ALTER TABLE CURSO
	ADD Cupo INT NOT NULL;
    
3.Inserte datos en la tabla:
(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
(102, “Matemática Discreta”,””,”Tarde”,30)

INSERT INTO CURSO
	values(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);

INSERT INTO CURSO
	values(102, 'Matemática Discreta','','Tarde',30);

4.Intente ingresar un registro con el nombre nulo y verifique que no funciona.

INSERT INTO CURSO
	values(103, NULL,'','Tarde',30);

Resultado: NOT NULL constraint failed: CURSO.Nombre

5.Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.

INSERT INTO CURSO
	values(101, 'blabla','','Tarde',30);

Resultado: UNIQUE constraint failed: CURSO.Codigo

6.Actualice, para todos los cursos, el cupo en 25.

UPDATE CURSO
	set cupo = 25;

7.Elimine el curso Algoritmos.

DELETE FROM CURSO
	where codigo = 101


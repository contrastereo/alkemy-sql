Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.

SELECT 	ESTUDIANTE_legajo, count(*) as CURSOS_INSCRIPTOS
	FROM inscripcion 
	GROUP BY ESTUDIANTE_legajo;
  

Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.

SELECT 
	ESTUDIANTE_legajo,
	count(*) as CURSOS_INSCRIPTOS
FROM inscripcion 
GROUP BY ESTUDIANTE_legajo
HAVING count(*)>1;

Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.

SELECT ESTUDIANTE.*
FROM ESTUDIANTE
WHERE NOT EXISTS (
  SELECT 1
  FROM inscripcion 
  WHERE INSCRIPCION.ESTUDIANTE_legajo=ESTUDIANTE.legajo
);

Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.

CREATE CLUSTERED INDEX pk_id ON PROFESOR (id);
CREATE CLUSTERED INDEX pk_codigo ON CURSO (codigo);
CREATE CLUSTERED INDEX pk_legajo ON ESTUDIANTE(legajo);
CREATE CLUSTERED INDEX pk_numero ON INSCRIPCION (numero);

Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.

SELECT * 
FROM ESTUDIANTE INNER JOIN INSCRIPCION ON 
ESTUDIANTE.legajo = INSCRIPCION.ESTUDIANTE_legajo
WHERE INSCRIPCION.CURSO_codigo IN 
(select codigo FROM curso WHERE profesor_id IN (SELECT id FROM profesor WHERE apellido IN ("Perez", "Paz")));
Escriba la siguiente información:

1. Nombre, apellido y cursos que realiza cada estudiante

SELECT ESTUDIANTE.nombre, ESTUDIANTE.apellido,CURSO.nombre
    FROM INSCRIPCION
    inner join CURSO on curso_codigo = CURSO.codigo
    INNER JOIN ESTUDIANTE on estudiante_legajo = ESTUDIANTE.legajo

2. Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso

SELECT ESTUDIANTE.nombre, ESTUDIANTE.apellido,CURSO.nombre
    FROM INSCRIPCION
    inner join CURSO on curso_codigo = CURSO.codigo
    INNER JOIN ESTUDIANTE on estudiante_legajo = ESTUDIANTE.legajo
    ORDER BY CURSO.nombre ASC;

3. Nombre, apellido y cursos que dicta cada profesor

SELECT PROFESOR.nombre, PROFESOR.apellido, CURSO.nombre
    FROM PROFESOR
    INNER JOIN CURSO on PROFESOR.id = CURSO.profesor_id;


4. Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso

SELECT PROFESOR.nombre, PROFESOR.apellido, CURSO.nombre
    FROM PROFESOR
    INNER JOIN CURSO on PROFESOR.id = CURSO.profesor_id
    ORDER BY CURSO.nombre ASC;

5. Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)

 SELECT CURSO.nombre,  (Curso.cupo - count(*)) as Cupos_disponibles
	FROM CURSO
    INNER JOIN INSCRIPCION on CURSO.codigo = INSCRIPCION.curso_codigo
	GROUP BY CURSO.nombre;

6. Cursos cuyo cupo disponible sea menor a 10

SELECT CURSO.nombre,  (Curso.cupo - count(*)) as Cupos_restantes
	FROM CURSO
    INNER JOIN INSCRIPCION on CURSO.codigo = INSCRIPCION.curso_codigo
	GROUP BY CURSO.nombre
    HAVING 10 < (CURSO.cupo - COUNT(*)) ;
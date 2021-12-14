SELECT
    COUNT(*) AS profesores
    FROM (SELECT PROFESOR.id,COUNT(CURSO.codigo)
        FROM profesor INNER JOIN curso 
        ON PROFESOR.id=CURSO.PROFESOR_id 
        WHERE CURSO.turno='noche'
        GROUP BY PROFESOR.id HAVING count()>1)turno_nocturno; 

SELECT * FROM ESTUDIANTE
where ESTUDIANTE.legajo IN (select INSCRIPCION.ESTUDIANTE_legajo
                  FROM INSCRIPCION
                  where INSCRIPCION.CURSO_codigo<>105);


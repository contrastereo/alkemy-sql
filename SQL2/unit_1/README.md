## El objetivo de este ejercicio es poder hacer consultas que obtengan datos en forma agregada.

Implicando que el query inicial de la tabla es el siguiente:

SELECT numero, curso_codigo, estudiante_legajo, fecha_hora, codigo, CURSO.nombre, descripcion, cupo, turno, profesor_id 
    FROM INSCRIPCION
    inner join CURSO on curso_codigo = CURSO.codigo
    INNER JOIN ESTUDIANTE on estudiante_legajo = ESTUDIANTE.legajo
order by CURSO.codigo asc
;

1. Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.

SELECT numero, curso_codigo, estudiante_legajo, fecha_hora, codigo, CURSO.nombre, descripcion, cupo, turno, profesor_id 
    FROM INSCRIPCION
    inner join CURSO on curso_codigo = CURSO.codigo
    INNER JOIN ESTUDIANTE on estudiante_legajo = ESTUDIANTE.legajo
WHERE ESTUDIANTE.carrera = 'Mecanica'
ORDER BY CURSO.codigo ASC;

2. Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.

SELECT min(salario) from PROFESOR
WHERE fecha_nacimiento < '1990-01-01' and fecha_nacimiento > '1979-12-31' ;

3. Para el siguiente modelo relacional:

4. Escriba las siguientes consultas:

Cantidad de pasajeros por país

 SELECT idpais, count(*) FROM PASAJEROS
 GROUP BY idpais;

Suma de todos los pagos realizados

 SELECT SUM(monto) FROM PAGOS

Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
 
 SELECT nombre, ROUND(SUM(monto),2) as suma_pagos FROM PASAJEROS
 INNER JOIN PAGO on idpasajero = PAGO.idpasajero
 GROUP BY nombre;

Promedio de los pagos que realizó un pasajero.
 SELECT AVG(monto) FROM PAGOS
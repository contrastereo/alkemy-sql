La secuencia de sentencias que se han sido la siguiente

1. Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.

SELECT nombre, apellido, fecha_nacimiento from PROFESOR
order by fecha_nacimiento ASC;

2. Todos los profesores cuyo salario sea mayor o igual a 65000.

SELECT * from PROFESOR
where salario > 65000

3. Todos los profesores que nacieron en la década del 80.

SELECT * from PROFESOR
where fecha_nacimiento < '1990-01-01' and fecha_nacimiento > '1979-12-31' 

4. 5 registros

SELECT * from PROFESOR
limit 5 

5. Todos los profesores cuyo apellido inicie con la letra “P”

SELECT * from PROFESOR
where apellido like "p%"

6. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000

SELECT * from PROFESOR
where fecha_nacimiento < '1990-01-01' and fecha_nacimiento > '1979-12-31' and salario > 80000
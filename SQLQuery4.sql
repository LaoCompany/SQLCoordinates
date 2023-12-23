--1.	Seleccionar todos los registros distintos de la tabla Estudiante.
SELECT DISTINCT * 
   FROM base2.Estudiante;

--2.	Renombrar el campo Nombre_Estudiante como Nombre y elegir aquellos cuyo nombre sea ‘Roberto’. Tambien
--mostrar el numero de legajo.

SELECT Legajo_Estudiante, Nombre_Estudiante as Nombre
   FROM base2.Estudiante 
   WHERE   Nombre_Estudiante = 'Roberto';

--3.	Mostrar el nombre, apellido y numero de legajo de los estudiantes cuyo numero de legajo es mayor a ‘E2857’.

SELECT 
   Nombre_Estudiante as Nombre, 
   Apellido_Estudiante, Legajo_Estudiante
   FROM base2.Estudiante 
   WHERE Legajo_Estudiante > 'E100';

--4.	Mostrar todos los datos del estudiante cuyo numero de legajo sea E2857 y se apellide Ruiz.
select * from base2.Estudiante
where Legajo_Estudiante = 'E2857' and Apellido_Estudiante = 'Gutierrez';

--5.Listar todos los datos de los estudiantes en forma ascendente.
select * from base2.Estudiante 
order by Nombre_Estudiante desc;

--6-Listar nombre, apellido y numero de legajo de los primeros 3 estudiantes matriculados.
	

select top 3 Nombre_Estudiante, Apellido_Estudiante, Legajo_Estudiante from base2.Estudiante;

--7-Listar los alumnos cuyo apellido sea Ruiz o Correa (uso de IN) 

select * from base2.Estudiante where Apellido_Estudiante in ('Gutierrez', 'Correa')
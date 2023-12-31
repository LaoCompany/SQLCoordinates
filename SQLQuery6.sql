--INNER JOIN
--LISTAR LOS ALUMNOS Y LOS DOCENTES CON LOS QUE CURSAN

SELECT T1.Nombre, T1.Apellido,T2.Nombre as Docente
FROM Estudiantes T1
JOIN Staff T2
ON T1.Docente = T2.DocentesID;

--LEFT JOIN
--LISTAR EL ID DEL ENCARGADO, EL NOMBRE, EL APELLIDO Y CUANTOS SON LOS DOCENTES QUE TIENE ASIGNADOS CADA ENCARGADO.

select t1.Encargado_ID, t1.Nombre, t1.Apellido,count(t2.DocentesID)as Cant_docentes 
from Encargado t1
Left join staff t2 on t1.Encargado_ID=t2.Encargado
GROUP by t1.Encargado_ID,t1.Nombre,t1.Apellido;

--RIGHT JOIN
/* 3Se requiere saber todos los datos de asignaturas que no tienen un docente asignado.El modelo de la consulta debe partir 
desde la tabla docentes. Keywords: Staff, Encargado, Asignaturas, costo, Area.*/
select * from staff;

select 
t2.*
from Staff t1
right join Asignaturas t2 on t1.Asignatura=t2.AsignaturasID
where t1.Encargado is null
group by t1.Encargado,t2.AsignaturasID,t2.Area,t2.Costo,t2.Jornada,t2.Jornada,t2.Nombre,t2.Tipo;

--FULL OUTER JOIN
--LISTAR TODOS LOS DOCENTES Y ALUMNOS QUE CURSAN
SELECT
  T1.Nombre as 'Estudiante',
  t2.Nombre as 'Docente'
FROM Estudiantes t1
FULL JOIN Staff t2
ON T1.Docente = T2.DocentesID;

/*5-Se requiere una listado unificado con nombre, apellido, documento y una marca indicando a que base corresponde. 
Renombrar como Marca Keywords: Encargo,Staff,Estudiantes. */

select Nombre,Apellido,Documento,'Encargado' as Marca
from Encargado
UNION
select Nombre,Apellido,Documento,'Estudiantes' as Marca
from Estudiantes
UNION
select Nombre,Apellido,Documento,'Staff' as Marca
from Staff
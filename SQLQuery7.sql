/*1-Indicar por jornada la cantidad de docentes que dictan y sumar los costos. 
Esta información solo se desea visualizar para las asignaturas de desarrollo web. 
El resultado debe contener todos los valores registrados en la primera tabla, 
Renombrar la columna del calculo de la cantidad de docentes como cant_docentes y 
la columna de la suma de los costos como suma_total. Keywords: Asignaturas,Staff, DocentesID, Jornada, Nombre, costo.*/

SELECT 
t2.Jornada,
count(t1.DocentesID) as cant_docentes,
sum(t2.costo) as suma_total  
FROM Staff t1
inner join Asignaturas t2 on t1.Asignatura=t2.AsignaturasID 
WHERE T2.Nombre='Desarrollo Web'
group by t2.Jornada;

/*2-Se requiere saber el id del encargado, el nombre, el apellido y cuantos son los docentes que tiene asignados cada encargado.
Luego filtrar los encargados que tienen como resultado 0 ya que son los encargados que NO tienen asignado un docente. 
Renombrar el campo de la operación como Cant_Docentes. Keywords: Docentes_id, Encargado, Staff, Nombre, Apellido,Encargado_ID.*/

select 
t1.Encargado_ID,
t1.Nombre,
t1.Apellido,
count(t2.DocentesID)as Cant_docentes
from Encargado t1
Left join staff t2 on t1.Encargado_ID=t2.Encargado
GROUP by t1.Encargado_ID,t1.Nombre,t1.Apellido
having COUNT(t2.DocentesID)=0 --or COUNT(t2.DocentesID)=0
--order by COUNT(t2.DocentesID);

/* 3Se requiere saber todos los datos de asignaturas que no tienen un docente asignado.El modelo de la consulta debe partir 
desde la tabla docentes. Keywords: Staff, Encargado, Asignaturas, costo, Area.*/
select * from staff;

select 
t2.*
from Staff t1
right join Asignaturas t2 on t1.Asignatura=t2.AsignaturasID
where t1.Encargado is null
group by t1.Encargado,t2.AsignaturasID,t2.Area,t2.Costo,t2.Jornada,t2.Jornada,t2.Nombre,t2.Tipo

/*4-Se quiere conocer la siguiente información de los docentes. El nombre completo concatenar el nombre y el apellido. 
Renombrar NombresCompletos, el documento, hacer un calculo para conocer los meses de ingreso. Renombrar meses_ingreso, 
el nombre del encargado. Renombrar NombreEncargado, el tefelono del encargado. Renombrar TelefonoEncargado, 
el nombre del curso o carrera, la jornada y el nombre del área. Solo se desean visualizar solo los que llevan mas de 3 meses.
Ordenar los meses de ingreso de mayor a menor.  Keywords: Encargo,Area,Staff,jornada, fecha ingreso.*/
SELECT 
concat(t1.Nombre,'-',t1.Apellido) as NombresCompletos,
t1.Documento,
DATEDIFF(MONTH,t1.[Fecha Ingreso],GETDATE()) AS meses_ingreso,
T2.Nombre AS NombreEncargado,
T2.Telefono TelefonoEncargado,
t3.Nombre,
t3.Jornada,
t4.Nombre
  FROM Staff t1
  inner join Encargado t2 on t1.Encargado=t2.Encargado_ID
  inner join Asignaturas t3 on t1.Asignatura=t3.AsignaturasID
  inner join Area t4 on t3.Area=t4.AreaID
GROUP by 
t1.Documento,t1.Nombre,t1.Apellido,t1.[Fecha Ingreso],t2.Nombre,t2.Telefono,t3.Nombre,t3.Jornada,t4.Nombre
HAVING DATEDIFF(MONTH,t1.[Fecha Ingreso],GETDATE())>=3
order by meses_ingreso asc;

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
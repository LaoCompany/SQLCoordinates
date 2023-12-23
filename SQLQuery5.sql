ALTER AUTHORIZATION ON DATABASE::Coderhouse TO SA
--PR�CTICA CLASE 7

--LEFT

select  LEFT(Nombre, 3) as Primeras_Nombre, Nombre, Documento from Estudiantes;

select  RIGHT(Nombre, 3) as Primeras_Nombre, Nombre, Documento from Estudiantes;

----CONCAT
SELECT * FROM Estudiantes;
Select Documento, CONCAT (Nombre,'-', Apellido) as Concatenados  from Estudiantes;

select * from Encargado;

select * from Asignaturas;

select * from Estudiantes;

--REPLACE
Select Documento,Nombre,  REPLACE (Nombre, 'a', 'o') as Reemplazados from Estudiantes;

SELECT Nombre, Apellido, REPLACE(Telefono,'11','(001)') as Formato_Tel�fono
FROM   
Estudiantes
WHERE Telefono IS NOT NULL
ORDER BY Apellido;

--UPPER/LOWER

select UPPER(Nombre) FROM Estudiantes;

select LOWER(Nombre) FROM Estudiantes;

----DATEPART/DATENAME 
Select Nombre,[Fecha de Nacimiento] , DATENAME(MONTH,[Fecha de Nacimiento]) as Mes from Estudiantes;

Select Nombre,[Fecha de Nacimiento] , DATEPART(MONTH,[Fecha de Nacimiento]) as Mes from Estudiantes;

--DATEADD
Select Apellido,[Fecha de Nacimiento], DATEADD(DAY, 2, [Fecha de Nacimiento]) as Fecha_nueva from Estudiantes;

--DATEDIFF
 
Select Apellido,[Fecha Ingreso], DATEDIFF(MONTH,[Fecha ingreso],GETDATE()) as Permanencia FROM Estudiantes;

select Apellido, [Fecha de Nacimiento], datediff(Day,[Fecha de Nacimiento],getdate())/(365) as Edad From Estudiantes;

--FLOOR
Select Nombre, Costo, FLOOR(Costo) as Costo from Asignaturas;

SELECT * FROM Asignaturas;
--CAST
Select Nombre, CAST(Costo AS INT) as Costo from Asignaturas;

--SUBCONSULTAS

SELECT *
FROM Asignaturas 
where Area = (SELECT AreaID FROM Area WHERE Nombre like ('%Marketing%'))
and Jornada ='Manana';

SELECT * FROM Area;
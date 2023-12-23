--CREAMOS LA BD
Create database Academia;

--ACTIVAMSO SU USO
Use Academia;

--CREAMOS EL ESQUEMA
Create schema base2;

--CREAMOS LA TABLA ESTUDIANTE
Create table base2.Estudiante(
Legajo_Estudiante varchar (100) not null primary key,
DNI_Estudiante int, 
Nombre_Estudiante varchar(100),
Apellido_Estudiante varchar (100),
Domicilio varchar (100))

select * from base2.Estudiante;

--CREAMOS LA TABLA PROFESOR
Create table base1.Profesor(
Legajo_Profesor varchar (100) not null primary key,
DNI_Profesor int,
Nombre varchar(100),
Apellido varchar (100)
) 

--CREAMOS LA TABLA ASIGNATURA (CON SUS CLAVES FORÁNEAS)
Create table base1.Asignatura(
Id_Asignatura varchar(100) not null primary key,
Nombre_Asignatura varchar(100),
Legajo_Profesor varchar(100) not null,
Legajo_Estudiante varchar(100) not null,
FOREIGN KEY (Legajo_Profesor) REFERENCES base1.Profesor(Legajo_Profesor),
FOREIGN KEY (Legajo_Estudiante) REFERENCES base2.Estudiante(Legajo_Estudiante)
) 
select * from base1.Asignatura;

alter table base2.Estudiante
add Email VARCHAR(200);

DROP DATABASE Academia;
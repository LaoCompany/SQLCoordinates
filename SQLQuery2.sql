/*VAMOS A INSERTAR DATOS EN LA TABLA ESTUDIANTE*/

--FORMA 1

SELECT * FROM base2.Estudiante;

Insert into base2.Estudiante(Legajo_Estudiante,DNI_Estudiante,Nombre_Estudiante,Apellido_Estudiante)
values ('E2854',20154788, 'Ana', 'Lopez');

--FORMA 2

insert into base2.Estudiante 
values ('E2855',45786349, 'Roberto', 'Correa');


insert into base2.Estudiante
values ('E2856',45786349, 'Roberto',Null);

--VAMOS A USAR EL UPDATE PARA ACTUALIZAR LOS CAMPOS

Update base2.Estudiante set DNI_Estudiante = 21458745 where Legajo_Estudiante = 'E2856';

Update base2.Estudiante set Apellido_Estudiante = 'Diaz' where Legajo_Estudiante = 'E2856';

SELECT * FROM base2.Estudiante;

--VAMOS A ELIMINAR UN REGISTRO

delete from base1.Estudiante;

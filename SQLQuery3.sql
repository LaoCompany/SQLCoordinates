SELECT * FROM base2.Estudiante;

--OPERADORES AND Y OR

SELECT  Legajo_Estudiante,Nombre_Estudiante, DNI_Estudiante FROM base2.Estudiante WHERE Apellido_Estudiante = 'Lope' or Nombre_Estudiante = 'Roberto';

--OPERADOR NOT

SELECT * FROM base2.Estudiante 
WHERE not Legajo_Estudiante = 'E2855';

--OPERADOR LIKE

SELECT * FROM base2.Estudiante 
WHERE Email like '%hotmail.com%';

--OPERADOR IN

SELECT * FROM base2.Estudiante 
WHERE Apellido_Estudiante in ('Lopez','Gomez','Ruiz');

--OPERADOR BETWEEN

select * from base1.Estudiante 
where Legajo_Estudiante between 'E100' AND 'E102';

--ORDER BY
select * from base2.Estudiante 
order by Nombre_Estudiante;

--TOP
select top 3 Nombre_Estudiante, Apellido_Estudiante, Legajo_Estudiante from base2.Estudiante
order by Apellido_Estudiante;

--COUNT
select count(Legajo_Estudiante) as Cantidad from base2.Estudiante;

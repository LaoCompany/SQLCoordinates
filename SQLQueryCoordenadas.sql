SELECT top 100 * from [CODER TP]
SELECT top 100 * from [Coordenadas vuelos]

SELECT COUNT(*) from [CODER TP] --842666

SELECT a.*
,b.[Origen Latitud] Latitud_Origen
,b.[Origen Longitud] Longitud_Origen
,c.[Origen Latitud] Latitud_Destino
,c.[Origen Longitud] Longitud_Destino
from [CODER TP] a 
left join [Coordenadas vuelos] b on (a.[Aeropuerto Origen]=b.Aeropuerto)
left join [Coordenadas vuelos] c on (a.[Aeropuerto Destino]=c.Aeropuerto)
WHERE (b.[Origen Latitud] is not null and b.[Origen Longitud] is not null) and (c.[Origen Latitud] is not null and c.[Origen Longitud] is not null)

SELECT Aeropuerto, COUNT (*)
from [Coordenadas vuelos]
group by Aeropuerto
Having count (*)>1
order by 1
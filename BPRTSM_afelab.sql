CREATE DATABASE BPRTSM_afelab;
USE BPRTSM_afelab;

CREATE TABLE IF NOT EXISTS BPRTSM_encuesta (
    encuesta_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    sexo VARCHAR(15),
    deporte_favorito VARCHAR(100),
    nivel_de_estudio VARCHAR(20),
    tema_favorito VARCHAR(10),
    fecha_registrada DATETIME DEFAULT CURRENT_TIMESTAMP
);

create view PorcentajeMujeres as
select concat(ROUND(count(*)/(select count(*) from bprtsm_encuesta be2 where be2.sexo='Femenino')*100,2),'%') as "Porcentaje Mujeres" from bprtsm_encuesta be where be.deporte_favorito = 'Futbol' and be.sexo = 'Femenino' 

create view PorcentajeHombres as
select concat(ROUND(count(*)/(select count(*) from bprtsm_encuesta be2 where be2.sexo='Masculino')*100,2),'%') as "Porcentaje Hombres" from bprtsm_encuesta be where be.tema_favorito  = 'Cocina' and be.sexo = 'Masculino' 

create view GraphicView as
select coalesce ((select * from PorcentajeMujeres),0) as "Porcentaje Mujeres",
coalesce((select * from PorcentajeHombres),0) as "Porcentaje Hombres",
coalesce((select count(*) from bprtsm_encuesta),0) as "Total Encuestas",
coalesce((select count(*) from bprtsm_encuesta be where be.sexo ='Masculino'),0) as "Total Hombres",
coalesce((select count(*) from bprtsm_encuesta be where be.sexo ='Femenino'),0) as "Total Mujeres",
coalesce((select count(*) from bprtsm_encuesta be where be.deporte_favorito  ='Futbol'),0) as "Total Futbol",
coalesce((select count(*) from bprtsm_encuesta be where be.deporte_favorito  ='Basquetball'),0) as "Total basquetball",
coalesce((select count(*) from bprtsm_encuesta be where be.deporte_favorito  ='Jockey'),0) as "Total jockey",
coalesce((select count(*) from bprtsm_encuesta be where be.deporte_favorito  ='Beisbal'),0) as "Total Beisbal",
coalesce((select count(*) from bprtsm_encuesta be where be.deporte_favorito  ='Golf'),0) as "Total Golf",
coalesce((select count(*) from bprtsm_encuesta be where be.nivel_de_estudio  ='nulo'),0) as "nulo",
coalesce((select count(*) from bprtsm_encuesta be where be.nivel_de_estudio  ='basico'),0) as "basico",
coalesce((select count(*) from bprtsm_encuesta be where be.nivel_de_estudio  ='intermedio'),0) as "intermedio",
coalesce((select count(*) from bprtsm_encuesta be where be.nivel_de_estudio  ='superior'),0) as "superior",
coalesce((select count(*) from bprtsm_encuesta be where be.tema_favorito  ='Television'),0) as "Television",
coalesce((select count(*) from bprtsm_encuesta be where be.tema_favorito  ='Cocina'),0) as "Cocina",
coalesce((select count(*) from bprtsm_encuesta be where be.tema_favorito  ='Tecnologia'),0) as "Tecnologia",
coalesce((select count(*) from bprtsm_encuesta be where be.tema_favorito  ='Musica'),0) as "Musica",
coalesce((select count(*) from bprtsm_encuesta be where be.tema_favorito  ='Deportes'),0) as "Deportes"

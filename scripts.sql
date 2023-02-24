/*SCRIPTS BASE DE DATOS PORTAFOLIO AUGUSTO ALMIRON - ARGENTINA PROGRAMA*/


/* 1- TABLA TECNOLOGIA*/
CREATE TABLE tecnologia(
					id_tecnologia int not null,
					descripcion varchar (100),

					CONSTRAINT pk_tecnologia PRIMARY KEY (id_tecnologia)
)
GO 



/* 2-TABLA DOMICILIO*/
CREATE TABLE domicilio(
					id_domicilio int not null,
					altura int,
					calle varchar (20),
					provincia varchar (20),
					ciudad varchar (20),

					CONSTRAINT pk_domicilio PRIMARY KEY (id_domicilio)
)
GO 
 

/* 3-TABLA EDUCACION*/
CREATE TABLE educacion(
					id_educacion int not null,
					nivel varchar (100),
					tipo varchar (100),
					descripcion varchar (100),

					CONSTRAINT pk_educacion PRIMARY KEY (id_educacion)
)
GO 


/* 4- TABLA Experiencia*/
CREATE TABLE experiencia_laboral(
			
					id_experiencia int not null,
					cargo varchar (100),
					descripcion varchar (100),

					CONSTRAINT pk_experiencia PRIMARY KEY (id_experiencia),					
)
GO 
/* 5- TABLA PERSONA*/
CREATE TABLE persona(
			
					id_persona int not null,
					nombre varchar (100),
					apellido varchar (100),
					dni int not null,
					edad date,

					CONSTRAINT pk_persona PRIMARY KEY (id_persona),					
)
GO 
/* 6-TABLA PROYECTO*/
CREATE TABLE proyecto(
			
					id_proyecto int not null,
					id_tecnologia int,
					descripcion varchar (100),

					CONSTRAINT pk_proyecto PRIMARY KEY (id_proyecto),
					CONSTRAINT fk_tecnologia FOREIGN KEY (id_tecnologia) REFERENCES tecnologia(id_tecnologia)
)
GO 
/* 7- TABLA PRINCIPAL USUARIO*/
CREATE TABLE usuario(
					id_usuario int not null,
					id_persona int not null,
					id_domicilio int,
					id_experiencia int,
					id_educacion int,
					id_proyecto int, 
					nombre varchar (100),
					apellido varchar (100),
					dni int not null,
					edad date,

					CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),		
					CONSTRAINT fk_personaUsuario FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
					CONSTRAINT fk_personaDomicilio FOREIGN KEY (id_domicilio) REFERENCES domicilio(id_domicilio),
					CONSTRAINT fk_personaExperiencia FOREIGN KEY (id_experiencia) REFERENCES experiencia_laboral(id_experiencia),
					CONSTRAINT fk_personaEducacion FOREIGN KEY (id_educacion) REFERENCES educacion (id_educacion),
					CONSTRAINT fk_personaProyecto FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
					)
GO 


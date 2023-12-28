--DATABASE CREATION--

USE master;
GO

IF EXISTS(SELECT * FROM sys.databases WHERE name = 'Teacher')
DROP DATABASE Teacher;
GO

CREATE DATABASE Teacher;
GO

USE Teacher;
GO

--DATABASE TABLES CREATION--


CREATE TABLE alumno (
  id int IDENTITY(1,1) primary key,
  dni varchar(8) NOT NULL,
  nombre varchar(255) NOT NULL,
  direccion varchar(255) NOT NULL,
  edad int NOT NULL,
  email varchar(100) NOT NULL
);

CREATE TABLE profesor (
	usuario varchar(255) primary key,
	pass varchar(255) NOT NULL,
	nombre varchar(255) NOT NULL,
	email varchar(255) NOT NULL
);

CREATE TABLE asignatura (
  id int IDENTITY(1,1) primary key,
  nombre varchar(255) NOT NULL,
  creditos int DEFAULT 0 NOT NULL,
  profesor varchar(255),
  FOREIGN KEY (profesor) REFERENCES profesor(usuario)
);


CREATE TABLE matricula (
  id int IDENTITY(1,1) primary key,
  alumnoId int NOT NULL,
  asignaturaId int NOT NULL,
  FOREIGN KEY (alumnoId) REFERENCES alumno(id),
  FOREIGN KEY (asignaturaId) REFERENCES asignatura(id)
);

CREATE TABLE calificacion (
  id int IDENTITY(1,1) primary key,
  descripcion varchar(255) NOT NULL,
  nota REAL NOT NULL,
  porcentaje int NOT NULL,
  matriculaId int NOT NULL,
  FOREIGN KEY (matriculaId) REFERENCES matricula(id)
) ;

--DATA INSERTS--

/*Table: alumno*/
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('4570012T','Miguel Alba Muñoz','C/Catadores 6',21,'miguel@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('5540004H','Jesus Rosado Pérez','C/Espronceda 57',21,'jesus@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3714623B','Ana Martínez Segura','C/Ave 1',19,'ana@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('8172446X','Naiara Gómez Lucero','C/Rafael Alberti 5',20,'naiara@hotmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('6623895J','Pedro Giraldo Sánchez','C/Cerro Águila 122',21,'pedro@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('1465252W','María Pérez López','C/Cielo S/N',18,'maria@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('1012618H','Luis Rodríguez Lances','C/Ceuta 41',19,'luis@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('4142276Q','Rocío Ruiz Ruiz','C/Benítez 3',20,'rocio@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3116151Y','Diego Manzorro Rodríguez','C/Isla 5',20,'diego@gmail.com');
INSERT INTO [Teacher].[alumno] ([dni],[nombre],[direccion],[edad],[email]) VALUES('3970711M','Antonio Cobelo Sánchez','C/Muniera 7',21,'antonio@gmail.com');

/*Table: profesores*/
INSERT INTO [Teacher].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('rocio','1234','Rocio Sánchez Jiménez','rocio@gmail.com');
INSERT INTO [Teacher].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('julio','1234','Julio Cerro Garcés','julio@gmail.com');
INSERT INTO [Teacher].[profesor]([usuario],[pass],[nombre],[email]) VALUES ('ivan','1234','Ivan Martínez Recio','ivan@gmail.com');

/*Table: asignaturas*/
INSERT INTO [Teacher].[asignatura]([nombre],[creditos],[profesor]) VALUES('Matemáticas',6,'rocio');
INSERT INTO [Teacher].[asignatura]([nombre],[creditos],[profesor]) VALUES('Informática',4,'rocio');
INSERT INTO [Teacher].[asignatura]([nombre],[creditos],[profesor]) VALUES('Inglés',5,'julio');
INSERT INTO [Teacher].[asignatura]([nombre],[creditos],[profesor]) VALUES('Lengua',6,'ivan');

/*Table: matricula*/
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(1,1);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(1,2);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(1,3);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(2,2);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(3,3);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(3,4);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(4,1);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(5,2);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(5,3);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(6,1);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(7,4);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(8,3);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(8,4);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(9,2);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(9,3);
INSERT INTO [Teacher].[matricula]([alumnoId],[asignaturaId]) VALUES(10,4);
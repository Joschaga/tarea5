--TAREA 5

--Creamos DB
create database PruebaInteligencia

--Seleccionamos la DB PruebaInteligencia
use PruebaInteligencia;

--Creamos Tabla de Datos de Usuario
create table Usuario
(
	Cedula varchar(14) primary key,
	Nombre varchar(50) NOT NULL,
	Apellido varchar (50) NOT NULL,
	Genero char(1) constraint chk_genero check(genero = 'F' or genero = 'M'),
	Fecha date
)

--Creamos Tabla de Respuestas
create table Respuestas
(
	Id int identity(1,1),
	Cedula varchar(14),
	R1 char(1),
	R2 char(1),
	R3 char(1),
	constraint pk_Id primary key(Id),
	constraint fk_Cedula foreign key(Cedula) references Usuario(Cedula)
)

--Probamos las Tablas Usuario
insert into Usuario values('1','José','Chan', 'M', getdate())
select * from Usuario

--Probamos las Tablas Usuario
insert into Respuestas values('1','a', 'b', 'c')
select * from Respuestas

--Probamos inner join
select Respuestas.Id, Usuario.Nombre, Usuario. Apellido, Usuario.Cedula, Usuario.Genero, Respuestas.R1, Respuestas.R2, Respuestas.R3, Usuario.Fecha
from Respuestas
inner join Usuario on Respuestas.Cedula = Usuario.Cedula

--Limpiamos las tablas
delete Respuestas where Cedula = '1'
delete Usuario where Cedula = '1'

--Chequeamos que estén vacías
select * from Usuario
select * from Respuestas
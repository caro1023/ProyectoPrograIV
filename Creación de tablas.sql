Create database ProyectoFinal

create table Usuarios (
Id_Log int identity primary key,
Usuario varchar(50) not null,
Contraseña varbinary(50) not null,
Nombre varchar(50) not null,  
Rol int
);

create table Laboratorios(
Id_Lab int identity primary key,
Numero_lab int,
Computadoras int not null,
Configuracion varchar(150),
SoftwareInstalado varchar(150),
ServidoresInstalado varchar(150),
Piso int not null,
Aire_Acondicionado binary,
VideoBeam binary
);


create table Solicitudes (
Id_Solicitud int identity primary key,
Id_Lab int not null FOREIGN KEY references Laboratorios(Id_Lab),
Id_Usuario int not null FOREIGN KEY references Usuarios(Id_Log),
Nombre varchar(50) not null,
Codigo_curso int not null,
Nombre_Curso varchar(50),
Confirmado bit,
Fecha_Solicitud datetime,
Fecha_Ocupado datetime 
);


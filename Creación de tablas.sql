create table Usuarios (
Id_Log int identity primary key,
Usuario varchar(50) not null,
Contraseña varbinary(50) not null,
Nombre varchar(50) not null,  
TipoUsuario varchar(50)
)

create table Laboratorios (
Id_Lab int identity primary key,
Computadoras int not null,
Configuracion varchar(100),
Id_rel_software int not null,
Id_rel_servidores int not null,
Piso int not null,
Aire_Acondicionado binary,
VideoBeam binary
);

create table Solicitudes (
Id_Solicitud int identity primary key,
Id_Lab varchar(50) not null FOREIGN KEY references Laboratorios(Id_Lab),
Id_Usuario varchar(50) not null FOREIGN KEY references Usuarios(Id_Log),
Nombre varchar(50) not null,
Codigo_curso int not null,
Nombre_Curso varchar(50),
Confirmado bit,
Fecha_Solicitud datetime,
Fecha_Ocupado datetime 
);

create table Software(
Id_Software int identity primary key,
Nombre varchar(50) not null,
Versión varchar(50) not null,  
id_rel_lab varchar(50)
);

create table Servidores(
Id_Servidor int identity primary key,
Nombre varchar(50) not null,
Versión varchar(50) not null,  
id_rel_lab varchar(50)
);

create table Relación(
Id_Rel int identity primary key,
Id_Software int not null FOREIGN KEY references Software(Id_Software),
Id_Servidor int not null FOREIGN KEY references Servidores(Id_Servidor),
Id_Lab int not null FOREIGN KEY references Laboratorios(Id_Lab)
);

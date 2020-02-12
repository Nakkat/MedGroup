-- DDL 

CREATE DATABASE MedGroup_Manha
GO

USE MedGroup_Manha
GO

CREATE TABLE Especialidades (
	IdEspecialidade		INT PRIMARY KEY IDENTITY,
	NomeEspecialidade	VARCHAR (255) NOT NULL
)

CREATE TABLE TipoUsuario (
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	NomeTipoUsuario VARCHAR(255) NOT NULL
)

CREATE TABLE Enderecos (
	IdEndereco		INT PRIMARY KEY IDENTITY,
	NomeEndereco	VARCHAR(255) NOT NULL,
	Telefone		VARCHAR(11)
)

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	NomeGenero  VARCHAR(255)
)

CREATE TABLE Usuarios (
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario  INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
	IdEndereco	   INT FOREIGN KEY REFERENCES Enderecos(IdEndereco),
	IdGenero	   INT FOREIGN KEY REFERENCES Generos(IdGenero),
	Nome		   VARCHAR(255) NOT NULL,
	Email		   VARCHAR(255) NOT NULL,
	Senha		   VARCHAR(255) NOT NULL
)	

CREATE TABLE DadosPaciente (
	IdDadosPaciente INT PRIMARY KEY IDENTITY,
	IdUsuario		INT FOREIGN KEY REFERENCES Usuarios(IdUsuario),
	NomePaciente	VARCHAR(255),
	RG			    CHAR(9) NOT NULL,
	CPF			    CHAR(11) NOT NULL
)

CREATE TABLE Clinicas (
	IdClinica	 INT PRIMARY KEY IDENTITY,
	IdEndereco   INT FOREIGN KEY REFERENCES Enderecos(IdEndereco),
	CNPJ		 CHAR(14) NOT NULL,
	RazaoSocial	 VARCHAR(255) NOT NULL,
	HorarioAbre  TIME NOT NULL,
	HorarioFecha TIME NOT NULL
)

CREATE TABLE DadosMedico (
	IdDadosMedico	INT PRIMARY KEY IDENTITY,
	IdUsuario		INT FOREIGN KEY REFERENCES Usuarios(IdUsuario),
	IdClinica		INT FOREIGN KEY REFERENCES Clinicas(IdClinica),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidade),
	NomeMedico		VARCHAR(255),
	CRM				CHAR(7) NOT NULL
)

CREATE TABLE StatusSituacao (
	IdStatusSituacao INT PRIMARY KEY IDENTITY,
	NomeSituacao	 VARCHAR (255)
)

CREATE TABLE Consultas (
	IdConsulta		    INT PRIMARY KEY IDENTITY,
	IdDadosPaciente		INT FOREIGN KEY REFERENCES DadosPaciente(IdDadosPaciente),
	IdDadosMedico		INT FOREIGN KEY REFERENCES DadosMedico(IdDadosMedico),
	IdStatusSituacao	INT FOREIGN KEY REFERENCES StatusSituacao(IdStatusSituacao),
	DataConsulta	    DATETIME2,
)

GO


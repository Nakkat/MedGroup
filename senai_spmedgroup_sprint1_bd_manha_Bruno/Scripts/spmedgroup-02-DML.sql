-- DML

INSERT INTO Especialidades VALUES (
	'Acupuntura'
)

INSERT INTO Especialidades VALUES (
	'Anestesiologista'
)

INSERT INTO Especialidades VALUES (
	'Angiologia'
)

INSERT INTO Especialidades VALUES (
	'Cardiologia'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Cardiovascular'
)

INSERT INTO Especialidades VALUES (
	'Cirurgi�o da M�o'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia do Aparelho Digestivo'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Geral'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Pedi�trica'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Pl�stica'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Tor�cica'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Vascular'
)

INSERT INTO Especialidades VALUES (
	'Dermatologia'
)

INSERT INTO Especialidades VALUES (
	'Radioterapia'
)

INSERT INTO Especialidades VALUES (
	'Urologia'
)

INSERT INTO Especialidades VALUES (
	'Pediatria'
)

INSERT INTO Especialidades VALUES (
	'Psiquiatria'
)

GO

INSERT INTO TipoUsuario VALUES (
	'Admnistrador'
)

INSERT INTO TipoUsuario VALUES (
	'Medico'
)

INSERT INTO TipoUsuario VALUES (
	'Paciente'
)

GO

INSERT INTO Enderecos VALUES (
	'Rua Sol, 123','111111111'
)

INSERT INTO Enderecos VALUES (
	'Rua Lua, 234','222222222'
)

INSERT INTO Enderecos VALUES (
	'Rua Terra, 456','333333333'
)

INSERT INTO Enderecos VALUES (
	'Rua Ar, 567','444444444'
)

INSERT INTO Enderecos VALUES (
	'Rua Agua, 789','555555555'
)

INSERT INTO Enderecos VALUES (
	'Rua Fogo, 8910','666666666'
)

INSERT INTO Enderecos VALUES (
	'Rua Elementar, 9101','777777777'
)

GO

INSERT INTO Generos VALUES (
	'Masculino'
)

INSERT INTO Generos VALUES (
	'Feminino'
)

INSERT INTO Generos VALUES (
	'Outros'
)

GO

INSERT INTO Usuarios VALUES (
	1,1,1,'Bruno','adm@adm.com','123','04/02/2000'
)

INSERT INTO Usuarios VALUES (
	2,2,2,'Mariana','mari@email.com','234','04/02/2001'
)

INSERT INTO Usuarios VALUES (
	3,3,1,'Carlos','carlos@email.com','345','04/02/2002'
)

INSERT INTO Usuarios VALUES (
	2,4,2,'Ana','ana@email.com','234','04/02/2003'
)

INSERT INTO Usuarios VALUES (
	3,5,3,'Eduardo','dudu@email.com','345','04/02/2004'
)

GO

INSERT INTO DadosPaciente VALUES (
	3,'Carlos','1970/05/12','201021292','10223923002'
)

INSERT INTO DadosPaciente VALUES (
	5,'Eduardo','1960/07/09','272932931','29320349301'
)

GO

INSERT INTO Clinicas VALUES (
	6,28392838493813,'SP Medical Group','05:00:00','22:00:00', 'SP Megroup'
)
INSERT INTO Clinicas VALUES (
	7,28392738493813,'SP Medical Group','10:00:00','20:00:00', 'SP Megroup'
)

GO

INSERT INTO DadosMedico VALUES (
	2,1,1,'Mariana','23201SP'
);
INSERT INTO DadosMedico VALUES (
	5,2,2,'Ana','24201RJ'
);

GO

INSERT INTO StatusSituacao VALUES(
	'Realizada'
)

INSERT INTO StatusSituacao VALUES(
	'Cancelada'
)

INSERT INTO StatusSituacao VALUES(
	'Agendada'
)

GO

INSERT INTO Consultas VALUES (
	3,4,1,'07/03/2020 12:00:59','dor no ouvido',5
)

INSERT INTO Consultas VALUES (
	4,3,2,'07/03/2020 13:00:59',null,6
)

INSERT INTO Consultas VALUES (
	3,3,3,'07/03/2020 14:00:59', null,6
)

GO

ALTER TABLE Consultas ADD Descricao VARCHAR(255)

ALTER TABLE Clinicas ADD NomeFantasia VARCHAR (255)

ALTER TABLE Consultas ADD IdClinica INT FOREIGN KEY REFERENCES Clinicas (IdClinica)
GO
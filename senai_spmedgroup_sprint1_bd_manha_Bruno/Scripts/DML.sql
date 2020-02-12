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
	'Cirurgião da Mão'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia do Aparelho Digestivo'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Geral'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Pediátrica'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Plástica'
)

INSERT INTO Especialidades VALUES (
	'Cirurgia Torácica'
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

INSERT INTO Usuarios VALUES (
	1,1,1,'Bruno','adm@adm.com','123'
)

INSERT INTO Usuarios VALUES (
	2,2,2,'Mariana','mari@email.com','234'
)

INSERT INTO Usuarios VALUES (
	3,3,1,'Carlos','carlos@email.com','345'
)

INSERT INTO Usuarios VALUES (
	2,4,2,'Ana','ana@email.com','234'
)

INSERT INTO Usuarios VALUES (
	3,5,3,'Eduardo','dudu@email.com','345'
)

GO

INSERT INTO DadosPaciente VALUES (
	'3','201021292','10223923002'
)

INSERT INTO DadosPaciente VALUES (
	'5','272932931','29320349301'
)

GO

INSERT INTO Clinicas VALUES (
	6,28392838493813,'SP Medical Group','05:00:00','22:00:00'
)
INSERT INTO Clinicas VALUES (
	7,28392738493813,'SP MecaGroup','10:00:00','20:00:00'
)

GO

INSERT INTO DadosMedico VALUES (
	2,1,1,'23201SP'
);
INSERT INTO DadosMedico VALUES (
	4,2,2,'24201RJ'
);

GO

INSERT INTO Consultas VALUES (
	1,1,1,'07/03/2020 12:00:59','Realizada'
)

INSERT INTO Consultas VALUES (
	2,1,2,'07/03/2020 13:00:59','Cancelada'
)

INSERT INTO Consultas VALUES (
	2,1,3,'07/03/2020 14:00:59','Agendada'
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

UPDATE Usuarios SET IdGenero = 1 WHERE IdUsuario = 1 
UPDATE Usuarios SET IdGenero = 2 WHERE IdUsuario = 2
UPDATE Usuarios SET IdGenero = 1 WHERE IdUsuario = 3
UPDATE Usuarios SET IdGenero = 2 WHERE IdUsuario = 4
UPDATE Usuarios SET IdGenero = 3 WHERE IdUsuario = 5

UPDATE Usuarios SET IdStatusSituacao = 1 WHERE IdConsulta = 4
UPDATE Usuarios SET IdStatusSituacao = 2 WHERE IdConsulta = 5
UPDATE Usuarios SET IdStatusSituacao = 3 WHERE IdConsulta = 6

GO
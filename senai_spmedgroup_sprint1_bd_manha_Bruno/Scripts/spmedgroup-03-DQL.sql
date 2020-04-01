-- DQL

-- SEM INNER JOIN

SELECT NomeEspecialidade FROM Especialidades
SELECT NomeEndereco,Telefone FROM Enderecos
SELECT NomeTipoUsuario FROM TipoUsuario
SELECT NomeGenero FROM Generos
SELECT NomeSituacao FROM StatusSituacao
SELECT * FROM Usuarios 
SELECT * FROM DadosPaciente
SELECT * FROM Clinicas
SELECT * FROM DadosMedico
SELECT * FROM Consultas

-- COM INNER JOIN 

SELECT Email,Senha,NomeTipoUsuario,NomeGenero, NomeEndereco,Telefone FROM Usuarios 
INNER JOIN TipoUsuario on TipoUsuario.IdTipoUsuario = Usuarios.IdTipoUsuario
INNER JOIN Enderecos on Enderecos.IdEndereco = Usuarios.IdEndereco
INNER JOIN Generos on Generos.Idgenero = Usuarios.IdGenero

SELECT  NomePaciente, Email, Senha, RG,CPF, NomeTipoUsuario, NomeEndereco, Telefone FROM DadosPaciente
INNER JOIN Usuarios on Usuarios.IdUsuario = DadosPaciente.IdUsuario
INNER JOIN TipoUsuario on TipoUsuario.IdTipoUsuario = Usuarios.IdTipoUsuario
INNER JOIN Enderecos on Enderecos.IdEndereco = Usuarios.IdEndereco

SELECT RazaoSocial, CNPJ, NomeEndereco, Telefone, HorarioAbre, HorarioFecha FROM Clinicas
INNER JOIN Enderecos on Enderecos.IdEndereco = Clinicas.IdEndereco

SELECT NomeMedico, CRM, NomeEspecialidade, 
RazaoSocial as Clinica, NomeEndereco, Telefone, CNPJ, HorarioAbre, HorarioFecha FROM DadosMedico
INNER JOIN Usuarios on Usuarios.IdUsuario = DadosMedico.IdUsuario
INNER JOIN Especialidades on Especialidades.IdEspecialidade  = DadosMedico.IdEspecialidade
INNER JOIN Clinicas on Clinicas.IdClinica = DadosMedico.IdClinica
INNER JOIN Enderecos on Enderecos.IdEndereco = Clinicas.IdEndereco

SELECT NomeMedico, NomePaciente, DataConsulta, NomeSituacao, NomeEndereco FROM Consultas
INNER JOIN DadosPaciente on DadosPaciente.IdDadosPaciente = Consultas.IdDadosPaciente
INNER JOIN DadosMedico on DadosMedico.IdDadosMedico = Consultas.IdDadosMedico
INNER JOIN StatusSituacao on StatusSituacao.IdStatusSituacao = Consultas.IdStatusSituacao
INNER JOIN Clinicas on Clinicas.IdClinica = DadosMedico.IdClinica
INNER JOIN Enderecos on Enderecos.IdEndereco = Clinicas.IdEndereco

GO

SELECT COUNT (IdUsuario) as Usuarios FROM Usuarios 
SELECT CONVERT(VARCHAR(8), GETDATE(), 1) AS [MM/DD/YY]
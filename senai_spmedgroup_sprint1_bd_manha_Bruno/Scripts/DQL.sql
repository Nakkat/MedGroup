-- DQL

-- SEM INNER JOIN 

SELECT NomeEspecialidade FROM Especialidades
SELECT NomeEndereco,Telefone FROM Enderecos
SELECT NomeTipoUsuario FROM TipoUsuario
SELECT * FROM Usuarios 
SELECT * FROM DadosPaciente
SELECT * FROM Clinicas
SELECT * FROM DadosMedico
SELECT * FROM Consultas
SELECT * FROM Generos
SELECT * FROM StatusSituacao



-- COM INNER JOIN 

SELECT Email,Senha,NomeTipoUsuario,NomeEndereco,Telefone FROM Usuarios 
INNER JOIN TipoUsuario on TipoUsuario.IdTipoUsuario = Usuarios.IdTipoUsuario
INNER JOIN Enderecos on Enderecos.IdEndereco = Usuarios.IdEndereco

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

SELECT NomeMedico, NomePaciente, DataConsulta, Situacao FROM Consultas
INNER JOIN DadosPaciente on DadosPaciente.IdDadosPaciente = Consultas.IdDadosPaciente
INNER JOIN DadosMedico on DadosMedico.IdDadosMedico = Consultas.IdDadosMedico

GO

--DML
USE HealthClinic;

INSERT INTO tb_Usuario(TipodeUsuario)
VALUES
	('Admin'),
	('Médico'),
	('Paciente')

INSERT INTO tb_Perfil(IdUsuario,Nome,DatadeNascimento,Sexo,Email,Senha)
VALUES
(1,'joao','2003/11/13',1,'joao@gmail.com',123456),
(2,'maria','2001/12/12',2,'maria@gmail.com',321456),
(3,'grazy','2006/08/08',2,'grazy@gmail.com',323123);



INSERT INTO tb_Clinica(CNPJ,Endereco,HorariOfuncionamento,NomeFantasia)
VALUES ('12345678901234','Rua das Bromênias 71','08:00:00','Health+')

select * from tb_Clinica
--aqui estou inserindo a usuario joao como um administrados geral. Assim ela fica classificada como administradora
INSERT INTO tb_ADM (Nome,IdPerfil)
VALUES	('joão',2)

--select * from tb_Perfil
--select * from tb_ADM

INSERT INTO tb_Especialidade (IdPerfil)
VALUES
	(1)
	
--select * from tb_Perfil

INSERT INTO tb_Medico(IdPerfil,CRM,Idade,Nome,IDESPECIALIDADE)
VALUES
	(1,'124578','46','claudio',1)
	
--select * from tb_Especialidade
	
--Aqui estou inserindo os dados do paciente, lembrando que o sexo é um valor bit, sendo 0 feminino e 1 masculino
INSERT INTO tb_Paciente(IDPERFIL,NOME,Sexo,PLANO_DE_SAUDE)
VALUES
	(3,'Grazy',0,'sulAmerica')
	
	select * from tb_Paciente 

--Aqui estou inserindo o agendamento, guardando dados envolvendo apenas o horário
INSERT INTO tb_Agendamento(IdAdm ,datadaconsulta)
VALUES
	(1,'2023-08-17')
	


INSERT INTO tb_Consulta(IdMedico,IdPaciente,Datacons,HORARIO,DESCRICAO )
VALUES 
	(1,1,'2009-09-09','10:00:00','Consulta Geral')--Aqui o agendamento é as 14 horas, com o médico Everton, Paciente André com prontuário que nunca foi a um médico
	

INSERT INTO tb_Feedback(IdConsulta,IdPaciente,Descricao)
VALUES
	(1,1,'Muito bom atendimento vc é o cara')

INSERT INTO tb_Feedback(IdConsulta,IdPaciente,Comentario)
VALUES
	(1,3,'vc é um belo professor')

INSERT INTO tb_Prontuario(DESCRICAO,ENCAMINHAMENTO,IdConsulta,IdPaciente)
VALUES 
	('Nunca passou por uma clínica hospitalar antes. Uma análise geral é altamente recomendada, possíveis divergências ainda não registradas',
	'Foi encaminhado para um especialista cardíaco. Problemas que ainda podem surgir nas vias cardíacas' ,1 ,1)

select * from tb_Usuario
select * from tb_Perfil
select * from tb_consulta
select * from tb_Medico
select * from tb_ADM
select * from tb_Agendamento
select * from tb_Paciente




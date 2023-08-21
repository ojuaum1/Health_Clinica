--DML
USE HealthClinic;

INSERT INTO tb_Usuario(TipodeUsuario)
VALUES
	('Admin'),
	('M�dico'),
	('Paciente')

INSERT INTO tb_Perfil(IdUsuario,Nome,DatadeNascimento,Sexo,Email,Senha)
VALUES
(1,'joao','2003/11/13',1,'joao@gmail.com',123456),
(2,'maria','2001/12/12',2,'maria@gmail.com',321456),
(3,'grazy','2006/08/08',2,'grazy@gmail.com',323123);



INSERT INTO tb_Clinica(CNPJ,Endereco,HorariOfuncionamento,NomeFantasia)
VALUES ('12345678901234','Rua das Brom�nias 71','08:00:00','Health+')

select * from tb_Clinica
--aqui estou inserindo a usuario joao como um administrados geral. Assim ela fica classificada como administradora
INSERT INTO tb_ADM (Nome,IdPerfil)
VALUES	('jo�o',2)

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
	
--Aqui estou inserindo os dados do paciente, lembrando que o sexo � um valor bit, sendo 0 feminino e 1 masculino
INSERT INTO tb_Paciente(IDPERFIL,NOME,Sexo,PLANO_DE_SAUDE)
VALUES
	(3,'Grazy',0,'sulAmerica')
	
	select * from tb_Paciente 

--Aqui estou inserindo o agendamento, guardando dados envolvendo apenas o hor�rio
INSERT INTO tb_Agendamento(IdAdm ,datadaconsulta)
VALUES
	(1,'2023-08-17')
	


INSERT INTO tb_Consulta(IdMedico,IdPaciente,Datacons,HORARIO,DESCRICAO )
VALUES 
	(1,1,'2009-09-09','10:00:00','Consulta Geral')--Aqui o agendamento � as 14 horas, com o m�dico Everton, Paciente Andr� com prontu�rio que nunca foi a um m�dico
	

INSERT INTO tb_Feedback(IdConsulta,IdPaciente,Descricao)
VALUES
	(1,1,'Muito bom atendimento vc � o cara')

INSERT INTO tb_Feedback(IdConsulta,IdPaciente,Comentario)
VALUES
	(1,3,'vc � um belo professor')

INSERT INTO tb_Prontuario(DESCRICAO,ENCAMINHAMENTO,IdConsulta,IdPaciente)
VALUES 
	('Nunca passou por uma cl�nica hospitalar antes. Uma an�lise geral � altamente recomendada, poss�veis diverg�ncias ainda n�o registradas',
	'Foi encaminhado para um especialista card�aco. Problemas que ainda podem surgir nas vias card�acas' ,1 ,1)

select * from tb_Usuario
select * from tb_Perfil
select * from tb_consulta
select * from tb_Medico
select * from tb_ADM
select * from tb_Agendamento
select * from tb_Paciente




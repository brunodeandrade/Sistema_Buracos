
USE BD_Sistema_de_buracos;

DROP PROCEDURE IF EXISTS sp_add_buraco ;
DROP PROCEDURE IF EXISTS sp_add_cidadao ;
DROP PROCEDURE IF EXISTS sp_add_cidade ;
DROP PROCEDURE IF EXISTS sp_add_dano_ocorrido;
DROP PROCEDURE IF EXISTS sp_add_endereco;
DROP PROCEDURE IF EXISTS sp_add_equipamento;
DROP PROCEDURE IF EXISTS sp_add_equipe_reparo;
DROP PROCEDURE IF EXISTS sp_add_pessoa;
DROP PROCEDURE IF EXISTS sp_add_sexo;
DROP PROCEDURE IF EXISTS sp_add_uf;
DROP PROCEDURE IF EXISTS sp_add_funcionario;
DROP PROCEDURE IF EXISTS sp_add_indenizacao;
DROP PROCEDURE IF EXISTS sp_add_ordem_de_servico;
DROP PROCEDURE IF EXISTS sp_add_ordem_trabalho;



DELIMITER |

create procedure sp_add_uf (idUF INT, descricao varchar(45))

begin

	insert into uf(idUf,descricao_uf) values (idUf,descricao);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_sexo (idSexo INT, sexo varchar(250))
begin
	insert into Sexo(idSexo, descricao_sexo ) values (idSexo,sexo);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_cidade(idCidade INT, descCidade varchar(250), DDD INT, Uf_idUf INT)
begin
	insert into cidade(idCidade, descCidade, DDD, Uf_idUf) values (idCidade, descCidade, DDD, Uf_idUf);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_endereco(idEndereco INT, rua varchar(250), bairro varchar(250), numero varchar(250), cep INT, complemento varchar(250), Cidade_idCidade INT)
begin
	insert into endereco(idEndereco, rua, bairro, numero, cep, complemento, Cidade_idCidade) values (idEndereco, rua, bairro, numero, cep, complemento, Cidade_idCidade);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|


create procedure sp_add_buraco(id INT, tamanho varchar(250), localizacao varchar(250), prioridade varchar(250), Endereco_idEndereco INT) 
begin
	insert into buraco(id, tamanho, localizacao, prioridade, Endereco_idEndereco)  values (id, tamanho, localizacao, prioridade, Endereco_idEndereco);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_pessoa(cpf INT, telefone INT, nome_pai varchar(250), nome_mae varchar(25), Endereco_idEndereco INT, Sexo_idSexo INT, nome_solteiro varchar(250), nome_casado varchar(250))
begin
	insert into pessoa(cpf, telefone, nome_pai, nome_mae, Endereco_idEndereco, Sexo_idSexo, nome_solteiro, nome_casado)  values (cpf, telefone, nome_pai, nome_mae, Endereco_idEndereco, Sexo_idSexo, nome_solteiro, nome_casado);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_dano_ocorrido(Buraco_id INT, Pessoa_cpf INT, tipo varchar(250))
begin
	insert into dano_ocorrido(Buraco_id, Pessoa_cpf, tipo)  values (Buraco_id, Pessoa_cpf, tipo);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_indenizacao(idIndenizacao INT, valor VARCHAR(250), Dano_Ocorrido_Buraco_id INT, Dano_Ocorrido_Pessoa_cpf INT)
begin
	insert into indenizacao(idIndenizacao, valor, Dano_Ocorrido_Buraco_id, Dano_Ocorrido_Pessoa_cpf)  values (idIndenizacao, valor, Dano_Ocorrido_Buraco_id, Dano_Ocorrido_Pessoa_cpf);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_funcionario(matricula INT, Pessoa_cpf INT)
begin
	insert into funcionario(matricula, Pessoa_cpf) values (matricula, Pessoa_cpf);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_cidadao(idCidadao INT, Pessoa_cpf INT,Pessoa_Endereco_idEndereco INT, Pessoa_Sexo_idSexo INT)
begin
	insert into cidadao(idCidadao, Pessoa_cpf,Pessoa_Endereco_idEndereco, Pessoa_Sexo_idSexo)
 values (idCidadao, Pessoa_cpf,Pessoa_Endereco_idEndereco, Pessoa_Sexo_idSexo);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_equipamento(numero_de_serie INT, funcao VARCHAR(250), tipo VARCHAR(250))
begin
	insert into equipamento(numero_de_serie, funcao, tipo)
 values (numero_de_serie, funcao, tipo);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|

create procedure sp_add_equipe_reparo(matricula_representante INT, Funcionario_matricula INT, Equipamento_numero_de_serie INT, Funcionario_Pessoa_cpf INT, numero_funcionarios INT)
begin
	insert into equipe_reparo(matricula_representante, Funcionario_matricula, Equipamento_numero_de_serie, Funcionario_Pessoa_cpf, numero_funcionarios)
 values (matricula_representante, Funcionario_matricula, Equipamento_numero_de_serie, Funcionario_Pessoa_cpf, numero_funcionarios);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|


create procedure sp_add_ordem_trabalho(id_trabalho INT, Buraco_id INT, Equipe_Reparo_matricula_representante INT, Equipe_Reparo_Funcionario_Pessoa_cpf INT, Equipe_Reparo_Equpamentos_numero_de_serie INT, Equipe_Reparo_Funcionario_matricula INT, custo FLOAT, materiais TEXT, numero_pessoas INT, status_ INT, horas TEXT)
begin
	insert into ordem_trabalho(id_trabalho, Buraco_id, Equipe_Reparo_matricula_representante, Equipe_Reparo_Funcionario_Pessoa_cpf, Equipe_Reparo_Equpamentos_numero_de_serie, Equipe_Reparo_Funcionario_matricula, custo, materiais, numero_pessoas, status_, horas)
 values (id_trabalho, Buraco_id, Equipe_Reparo_matricula_representante, Equipe_Reparo_Funcionario_Pessoa_cpf, Equipe_Reparo_Equpamentos_numero_de_serie, Equipe_Reparo_Funcionario_matricula, custo, materiais, numero_pessoas, status_, horas);

	DBMS_OUTPUT.PUT_LINE('Inserção realizada com sucesso.');

	EXCEPTION 
		when Dup_Val_On_Index
		when VALUE_ERROR THEN 
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');
		when others then
	DBMS_OUTPUT.PUT_LINE('Erro na inserção de dados');

end;|



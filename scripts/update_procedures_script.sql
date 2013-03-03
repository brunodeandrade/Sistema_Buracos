DROP PROCEDURE IF EXISTS sp_update_uf;
DROP PROCEDURE IF EXISTS sp_update_sexo;
DROP PROCEDURE IF EXISTS sp_update_cidade;
DROP PROCEDURE IF EXISTS sp_update_endereco;
DROP PROCEDURE IF EXISTS sp_update_buraco;
DROP PROCEDURE IF EXISTS sp_update_pessoa;

/*This script contains the procedures that will be called by the user to
updating data in any tables*/

DELIMITER |

create procedure procedure_update_uf(IN id INT,IN descricao_uf varchar(45))
begin		

	if id=null then
	Select 'Linha nao encontrada';
		else 
			update uf set descricao_uf=descricao_uf where idUf=id;
			end if;
end;|

create procedure procedure_update_sexo(IN id INT,IN descricao_sexo varchar(250))
begin

if id=null then
	Select 'Linha nao encontrada';
		else 
	update sexo set descricao_sexo=descricao_sexo where idSexo=id;
	end if;
end;|

create procedure procedure_update_cidade(IN id INT,IN descCidade varchar(250),IN DDD INT)
begin

	if id=null then
	Select 'Linha nao encontrada';
		else
		update cidade set descCidade=descCidade, DDD=DDD where idCidade=id;
	end if;
end;|

create procedure procedure_update_endereco(IN id INT,IN rua varchar(250),IN bairro varchar(250), numero varchar(250), cep INT, complemento varchar(250), Cidade_idCidade INT)
begin

	if id=null then
	Select 'Linha nao encontrada';
		else
		update endereco set rua=rua, bairro=bairro,numero=numero,cep=cep,complemento=complemento,
	Cidade_idCidade=Cidade_idCidade where idEndereco=id;

	end if;
end;|



create procedure procedure_update_buraco(id_buraco INT, tamanho varchar(250), localizacao varchar(250), prioridade varchar(250), Endereco_idEndereco INT) 
begin
	if id=null then
	Select 'Linha nao encontrada';
		else
		update buraco set tamanho=tamanho,localizacao=localizacao,prioridade=prioridade,
	Endereco_idEndereco=Endereco_idEndereco where id=id_buraco;

	end if
end;|

create procedure procedure_update_pessoa(cpf1 INT, telefone INT, nome_pai varchar(250), nome_mae varchar(25), 
Endereco_idEndereco INT, Sexo_idSexo INT, nome_solteiro varchar(250), nome_casado varchar(250))
begin

	if id=null then
	Select 'Linha nao encontrada';
		else
		update pessoa set cpf=cpf,telefone=telefone,nome_pai=nome_pai,nome_mae=nome_mae,
	Endereco_idEndereco=Endereco_idEndereco,Sexo_idSexo=Sexo_idSexo,nome_solteiro=nome_solteiro,
	nome_casado=nome_casado where cpf=cpf1;
	end if;
end;|








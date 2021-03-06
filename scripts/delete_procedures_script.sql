
/*This script contains the procedures that will be called by the user to
delete data in any tables*/

USE BD_sistema_de_buracos;

DROP PROCEDURE IF EXISTS sp_delete_buraco;
DROP PROCEDURE IF EXISTS sp_delete_cidade;
DROP PROCEDURE IF EXISTS sp_delete_cidadao;
DROP PROCEDURE IF EXISTS sp_delete_dano_ocorrido;
DROP PROCEDURE IF EXISTS sp_delete_endereco;
DROP PROCEDURE IF EXISTS sp_delete_equipamento;
DROP PROCEDURE IF EXISTS sp_delete_equipe_reparo;
DROP PROCEDURE IF EXISTS sp_delete_funcionario;
DROP PROCEDURE IF EXISTS sp_delete_indenizacao;
DROP PROCEDURE IF EXISTS sp_delete_indenizacao;
DROP PROCEDURE IF EXISTS sp_delete_ordem_de_servico;
DROP PROCEDURE IF EXISTS sp_delete_ordem_trabalho;
DROP PROCEDURE IF EXISTS sp_delete_ordem_trabalho;
DROP PROCEDURE IF EXISTS sp_delete_pessoa;
DROP PROCEDURE IF EXISTS sp_delete_sexo;
DROP PROCEDURE IF EXISTS sp_delete_uf;


DELIMITER |

CREATE PROCEDURE sp_delete_buraco (IN br INT)
BEGIN
	DELETE FROM buraco WHERE id=br ;
		if id then
			Select 'Nao foi possivel apagar o registro';
				else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_cidadao(IN cd INT)
BEGIN
	DELETE FROM cidadao WHERE idCidadao=cd ;
		if idCidadao then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_cidade(IN cid INT)
BEGIN
	DELETE FROM cidade WHERE idCidade=cid ;
		if idCidade then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_dano_ocorrido(IN dano INT)
BEGIN
	DELETE FROM dano_ocorrido WHERE Buraco_id=dano;
		if Buraco_id then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|
CREATE PROCEDURE sp_delete_endereco(IN ender INT)
BEGIN
	DELETE FROM endereco WHERE idEndereco=ender;
		if idEndereco then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_equipamento(IN eqpmnt INT)
BEGIN
	DELETE FROM equipamento WHERE numero_de_serie=eqpmnt;
		if numero_de_serie then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_equipe_reparo(IN equip INT)
BEGIN
	DELETE FROM equipe_reparo WHERE matricula_representante=equip;
	if equipe_reparo then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_funcionario(IN func INT)
BEGIN
	DELETE FROM funcionario WHERE matricula=func;
		if matricula then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|
CREATE PROCEDURE sp_delete_indenizacao(IN ind INT)
BEGIN
	DELETE FROM indenizacao WHERE idIndenizacao=ind;
		if idIndenizacao then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_ordem_de_servico(IN ord_serv INT)
BEGIN
	DELETE FROM ordem_de_servico WHERE id=ord_serv;
	if id then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_ordem_trabalho(IN ord_trab INT)
BEGIN
	DELETE FROM ordem_trabalho WHERE id_trabalho=ord_trab;
	if id_trabalho then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_pessoa(IN pess INT)
BEGIN
	DELETE FROM pessoa WHERE cpf=pess;
		if cpf then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_sexo(IN id INT)
BEGIN
	DELETE FROM sexo WHERE idSexo=id;
	if idSexo then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|

CREATE PROCEDURE sp_delete_uf(IN uf INT)
BEGIN
	DELETE FROM uf WHERE idUf=uf;
	if idUf then
			Select 'Nao foi possivel apagar o registro';
		else if  !id then
					Select 'Exclusao efetuada com sucesso';
					end IF;
						end if;
end;|
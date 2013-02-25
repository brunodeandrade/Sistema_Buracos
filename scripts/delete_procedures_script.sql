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
END;|

CREATE PROCEDURE sp_delete_cidadao(IN cd INT)
BEGIN
	DELETE FROM cidadao WHERE idCidadao=cd ;
END;|

CREATE PROCEDURE sp_delete_cidade(IN cid INT)
BEGIN
	DELETE FROM cidade WHERE idCidade=cid ;
END;|

CREATE PROCEDURE sp_delete_dano_ocorrido(IN dano INT)
BEGIN
	DELETE FROM dano_ocorrido WHERE Buraco_id=dano;
END;|

CREATE PROCEDURE sp_delete_endereco(IN ender INT)
BEGIN
	DELETE FROM endereco WHERE idEndereco=ender;
END;|

CREATE PROCEDURE sp_delete_equipamento(IN eqpmnt INT)
BEGIN
	DELETE FROM equipamento WHERE numero_de_serie=eqpmnt;
END;|

CREATE PROCEDURE sp_delete_equipe_reparo(IN equip INT)
BEGIN
	DELETE FROM equipe_reparo WHERE matricula_representante=equip;
END;|

CREATE PROCEDURE sp_delete_funcionario(IN func INT)
BEGIN
	DELETE FROM funcionario WHERE matricula=func;
END;|

CREATE PROCEDURE sp_delete_indenizacao(IN ind INT)
BEGIN
	DELETE FROM indenizacao WHERE idIndenizacao=ind;
END;|

CREATE PROCEDURE sp_delete_ordem_de_servico(IN ord_serv INT)
BEGIN
	DELETE FROM ordem_de_servico WHERE id=ord_serv;
END;|

CREATE PROCEDURE sp_delete_ordem_trabalho(IN ord_trab INT)
BEGIN
	DELETE FROM ordem_trabalho WHERE id_trabalho=ord_trab;
END;|

CREATE PROCEDURE sp_delete_pessoa(IN pess INT)
BEGIN
	DELETE FROM pessoa WHERE cpf=pess;
END;|

CREATE PROCEDURE sp_delete_sexo(IN id INT)
BEGIN
	DELETE FROM sexo WHERE idSexo=id;
END;|

CREATE PROCEDURE sp_delete_uf(IN uf INT)
BEGIN
	DELETE FROM uf WHERE idUf=uf;
END;|
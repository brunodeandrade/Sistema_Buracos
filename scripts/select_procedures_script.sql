

/*This script contains procedures that make their selection for visualization of tables of contents*/ 

USE BD_Sistema_de_buracos;

DELIMITER |

create procedure sp_select_buraco()  
begin
	select * from buraco;

	EXCEPTION 			
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_cidadao()
begin
	select * from cidadao;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_cidade()
begin
	select * from cidade;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|


 create procedure sp_select_dano_ocorrido()
 begin
 	select * from dano_ocorrido;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
 end;|

create procedure sp_select_endereco()
begin
	select * from endereco;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_equipamento()
begin
	select * from equipamento;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_equipe_reparo()
begin
	select * from equipe_reparo;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_funcionario()
begin
	select * from funcionario;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_indenizacao()
begin
	select * from indenizacao;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_ordem_de_servico()
begin
	select * from ordem_de_servico;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_ordem_trabalho()
begin
	select * from ordem_trabalho;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_pessoa()
begin
	select * from pessoa;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_sexo()
begin
	select * from sexo;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|

create procedure sp_select_uf()
begin
	select * from uf;

EXCEPTION 
	WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Custom NO_DATA_FOUND');
end;|


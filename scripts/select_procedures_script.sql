USE BD_Sistema_de_buracos;

DELIMITER |

create procedure sp_select_buraco()  
begin
	select * from buraco;
end;|

create procedure sp_select_cidadao()
begin
	select * from cidadao;
end;|

create procedure sp_select_cidade()
begin
	select * from cidade;
end;|


 create procedure sp_select_dano_ocorrido()
 begin
 	select * from dano_ocorrido;
 end;|

create procedure sp_select_endereco()
begin
	select * from endereco;
end;|

create procedure sp_select_equipamento()
begin
	select * from equipamento;
end;|

create procedure sp_select_equipe_reparo()
begin
	select * from equipe_reparo;
end;|

create procedure sp_select_funcionario()
begin
	select * from funcionario;
end;|

create procedure sp_select_indenizacao()
begin
	select * from indenizacao;
end;|

create procedure sp_select_ordem_de_servico()
begin
	select * from ordem_de_servico;
end;|

create procedure sp_select_ordem_trabalho()
begin
	select * from ordem_trabalho;
end;|

create procedure sp_select_pessoa()
begin
	select * from pessoa;
end;|

create procedure sp_select_sexo()
begin
	select * from sexo;
end;|

create procedure sp_select_uf()
begin
	select * from uf;
end;|


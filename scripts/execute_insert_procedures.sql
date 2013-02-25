USE BD_sistema_de_buracos;


CALL sp_add_uf(1,"DF");
CALL sp_add_uf(2,"DF");
CALL sp_add_uf(3,"DF");

CALL sp_add_sexo(1,"Masculino");
CALL sp_add_sexo(2,"Masculino");
CALL sp_add_sexo(3,"Feminino");

CALL sp_add_cidade(1, "Gama", 61, 1);
CALL sp_add_cidade(2, "Taguatinga", 61, 2);
CALL sp_add_cidade(3, "Sobradinho", 61, 3);

CALL sp_add_endereco(1, "Rua 5", "", "13", 72110800, "Quadra 10", 1);
CALL sp_add_endereco(2, "Rua 55", "", "12", 72110800, "Quadra 21", 2);
CALL sp_add_endereco(3, "Rua 53", "", "11", 72110800, "Quadra 11", 3);

CALL sp_add_buraco(1,"2 metros", "Centro da Rua", "1", 1);
CALL sp_add_buraco(2,"2 metros", "Centro da Rua", "1", 2);
CALL sp_add_buraco(3,"2 metros", "Centro da Rua", "1", 3);

CALL sp_add_pessoa(123456, 35972323, "Jose Campos", "Maria Benedita", 1, 1, "Fulano da Silva Gomes", "Fulano da Silva");
CALL sp_add_pessoa(1234567, 35972323, "Joao Campos", "Marlene Benedita", 2, 2, "Ciclano da Silva Gomes", "Ciclano da Silva");
CALL sp_add_pessoa(12345678, 35972323, "Jeremias Campos", "Maricreuza Benedita", 3, 3, "Beutrano da Silva Gomes", "Beutrano da Silva");


CALL sp_add_dano_ocorrido(1,123456 , "Muito grave");
CALL sp_add_dano_ocorrido(2,1234567 , "Médio");
CALL sp_add_dano_ocorrido(3,12345678 , "Pequeno");


CALL sp_add_indenizacao(1,2000,1,123456);
CALL sp_add_indenizacao(2,3000,2,1234567);
CALL sp_add_indenizacao(3,4000,3,12345678);

CALL sp_add_cidadao(1,123456,1,1);
CALL sp_add_cidadao(2,1234567,2,2);
CALL sp_add_cidadao(3,12345678,3,3);

CALL sp_add_equipamento(1,"Escavadeira","Construção");
CALL sp_add_equipamento(2,"Trator","Construção");
CALL sp_add_equipamento(3,"Furadeira","Construção");

CALL sp_add_funcionario(1,123456);
CALL sp_add_funcionario(2,1234567);
CALL sp_add_funcionario(3,12345678);

CALL sp_add_equipe_reparo(1,1,1,123456,15);
CALL sp_add_equipe_reparo(2,2,2,1234567,20);
CALL sp_add_equipe_reparo(3,3,3,12345678,25);

CALL sp_add_ordem_trabalho(1,1,1,123456,1,1,3000,"concreto",1,0,"12:10");
CALL sp_add_ordem_trabalho(2,2,2,1234567,2,2,5000,"pixe",30,1,"13:10");
CALL sp_add_ordem_trabalho(3,3,3,12345678,3,3,8000,"cimento",2,"14:10");




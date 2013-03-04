
/*This script has a function call that contains the relevant procedures
DELETE methods.*/

USE BD_sistema_de_buracos;


set number_one = 1;
set number_two = 2;
set number_three = 3;


CALL sp_add_uf(number_one,"DF");
CALL sp_add_uf(number_two,"DF");
CALL sp_add_uf(number_three,"DF");

CALL sp_add_sexo(number_one,"Masculino");
CALL sp_add_sexo(number_two,"Masculino");
CALL sp_add_sexo(number_three,"Feminino");

CALL sp_add_cidade(number_one, "Gama", 61, number_one);
CALL sp_add_cidade(number_two, "Taguatinga", 61, number_two);
CALL sp_add_cidade(number_three, "Sobradinho", 61, number_three);

CALL sp_add_endereco(number_one, "Rua 5", "", "13", 72110800, "Quadra 10", number_one);
CALL sp_add_endereco(number_two, "Rua 55", "", "12", 72110800, "Quadra 21", number_two);
CALL sp_add_endereco(3, "Rua 53", "", "11", 72110800, "Quadra 11", number_three);

CALL sp_add_buraco(number_one,"2 metros", "Centro da Rua", "1",number_one);
CALL sp_add_buraco(number_two,"2 metros", "Centro da Rua", "1", number_two);
CALL sp_add_buraco(number_three,"2 metros", "Centro da Rua", "1", number_three);

CALL sp_add_pessoa(123456, 35972323, "Jose Campos", "Maria Benedita", number_one,number_one,
 "Fulano da Silva Gomes", "Fulano da Silva");
CALL sp_add_pessoa(1234567, 35972323, "Joao Campos", "Marlene Benedita", number_two, number_two,
 "Ciclano da Silva Gomes", "Ciclano da Silva");
CALL sp_add_pessoa(12345678, 35972323, "Jeremias Campos", "Maricreuza Benedita",
 3, 3, "Beutrano da Silva Gomes", "Beutrano da Silva");


CALL sp_add_dano_ocorrido(number_one,123456 , "Muito grave");
CALL sp_add_dano_ocorrido(number_two,1234567 , "Médio");
CALL sp_add_dano_ocorrido(3,12345678 , "Pequeno");


CALL sp_add_indenizacao(number_one,2000,number_one,123456);
CALL sp_add_indenizacao(number_two,3000,number_two,1234567);
CALL sp_add_indenizacao(number_three,4000,number_three,12345678);

CALL sp_add_cidadao(number_one,123456,number_one,number_one);
CALL sp_add_cidadao(number_two,1234567,number_two,number_two);
CALL sp_add_cidadao(number_three,12345678,number_three,number_three);

CALL sp_add_equipamento(number_one,"Escavadeira","Construção");
CALL sp_add_equipamento(number_two,"Trator","Construção");
CALL sp_add_equipamento(number_three,"Furadeira","Construção");

CALL sp_add_funcionario(number_one,123456);
CALL sp_add_funcionario(number_two,1234567);
CALL sp_add_funcionario(number_three,12345678);

CALL sp_add_equipe_reparo(number_one,number_one,number_one,123456,15);
CALL sp_add_equipe_reparo(number_two,number_two,number_two,1234567,20);
CALL sp_add_equipe_reparo(number_three,number_three,number_three,12345678,25);

CALL sp_add_ordem_trabalho(number_one,number_one,number_one,123456,number_one,
number_one,3000,"concreto",number_one,0,"12:10");
CALL sp_add_ordem_trabalho(number_two,number_two,number_two,1234567,number_two,
number_two,5000,"pixe",30,number_one,"13:10");
CALL sp_add_ordem_trabalho(number_three,number_three,number_three,12345678,number_three,number_three,
8000,"cimento",number_two,"14:10");




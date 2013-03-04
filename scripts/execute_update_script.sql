
/*This script has a function call that contains the relevant procedures
UPDATE methods.*/


set number_one = 1;
set number_two = 2;
set number_three = 3;

CALL sp_update_uf(number_one,"Mudou1");
CALL sp_update_uf(number_two,"Mudou2");
CALL sp_update_uf(number_three,"Mudou3");

CALL sp_update_sexo(number_one,"Masculino1");
CALL sp_update_sexo(number_two,"Masculino2");
CALL sp_update_sexo(number_three,"Feminino3");


CALL sp_update_cidade(number_one,"Goiânia",62);
CALL sp_update_cidade(number_two,"Caldas Novas",62);
CALL sp_update_cidade(number_three,"Rio de Janeiro",11);

CALL sp_update_endereco(number_one,"Rua dos bobos","P.SUL", "zero",111,
"Casa muito engracada",number_one);
CALL sp_update_endereco(number_two,"Rua das Palmeiras","P.NORTE", "um",222,"",1);
CALL sp_update_endereco(number_three,"Rua Juscelino Kubitchek","SETOR O", "um",333,
"Casa muito engracada",number_one);

CALL sp_update_endereco(number_one,"Rua dos bobos","P.SUL", "zero",111,"Casa muito engracada",number_one);

CALL sp_update_buraco(number_one,"Mudou para 20 metros", "Mudou paraCanto da rua", "5", number_one);

CALL sp_update_pessoa(123456, 22222, "Hilmer", "Edna", 1, 1, "Russo Sabolevski"
, "Russo Sabolevski da Silva");
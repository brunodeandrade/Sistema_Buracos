
/*This script has a function call that contains the relevant procedures
UPDATE methods.*/

CALL sp_update_uf(1,"Mudou1");
CALL sp_update_uf(2,"Mudou2");
CALL sp_update_uf(3,"Mudou3");

CALL sp_update_sexo(1,"Masculino1");
CALL sp_update_sexo(2,"Masculino2");
CALL sp_update_sexo(3,"Feminino3");


CALL sp_update_cidade(1,"Goiânia",62);
CALL sp_update_cidade(2,"Caldas Novas",62);
CALL sp_update_cidade(3,"Rio de Janeiro",11);

CALL sp_update_endereco(1,"Rua dos bobos","P.SUL", "zero",111,"Casa muito engracada",1);
CALL sp_update_endereco(2,"Rua das Palmeiras","P.NORTE", "um",222,"",1);
CALL sp_update_endereco(3,"Rua Juscelino Kubitchek","SETOR O", "um",333,"Casa muito engracada",1);

CALL sp_update_endereco(1,"Rua dos bobos","P.SUL", "zero",111,"Casa muito engracada",1);

CALL sp_update_buraco(1,"Mudou para 20 metros", "Mudou paraCanto da rua", "5", 1);

CALL sp_update_pessoa(123456, 22222, "Hilmer", "Edna", 1, 1, "Russo Sabolevski", "Russo Sabolevski da Silva");

USE `BD_Sistema_De_Buracos` ;

INSERT INTO uf(idUf,descricao_uf) values (1,"DF");


INSERT INTO cidade(idCidade, descCidade, DDD, Uf_idUf) values (1, "Gama", 61, 1);


INSERT INTO endereco(idEndereco, rua, bairro, numero, cep, complemento, Cidade_idCidade) 
values (1, "Rua 5", "", "13", 72110800, "Quadra 10", 1);


INSERT INTO buraco(id, tamanho, localizacao, prioridade, Endereco_idEndereco) 
values(1,"2 metros", "Centro da Rua", "1", 1);


INSERT INTO sexo(idSexo, descricao_sexo) values (1,"Masculino");


INSERT INTO pessoa(cpf, telefone, nome_pai, nome_mae, Endereco_idEndereco, Sexo_idSexo, nome_solteiro, nome_casado)
values(123456, 35972323, "Jose Campos", "Maria Benedita", 1, 1, "Fulano da Silva Gomes", "Fulano da Silva");


INSERT INTO pessoa(cpf, telefone, nome_pai, nome_mae, Endereco_idEndereco, Sexo_idSexo, nome_solteiro, nome_casado)
values(1234567, 35972323, "Jose Campos", "Maria Benedita", 1, 1, "Joao da Silva Gomes", "Joao da Silva");


INSERT INTO dano_ocorrido(Buraco_id, Pessoa_cpf, tipo) values (1,1 , "Muito grave");


INSERT INTO indenizacao(idIndenizacao, valor, Dano_Ocorrido_Buraco_id, Dano_Ocorrido_Pessoa_cpf)
values(1,2000,1,1);


INSERT INTO funcionario(matricula, Pessoa_cpf) values (1,1234567);



INSERT INTO cidadao(idCidadao, Pessoa_cpf,Pessoa_Endereco_idEndereco, Pessoa_Sexo_idSexo)
values (1,123456,1,1);


INSERT INTO equipamento(numero_de_serie, funcao, tipo) values
(1,"Escavadeira","Construção");


INSERT INTO equipe_reparo(matricula_representante, Funcionario_matricula, Equipamento_numero_de_serie, Funcionario_Pessoa_cpf, numero_funcionarios)
values (1,1,1,1234567,15);


INSERT INTO ordem_trabalho(id_trabalho, Buraco_id, Equipe_Reparo_matricula_representante, Equipe_Reparo_Funcionario_Pessoa_cpf, Equipe_Reparo_Equipamento_numero_de_serie, Equipe_Reparo_Funcionario_matricula, custo, material, numero_pessoa, status_, hora, Ordem_de_Serviço_id)
values (1,1,1,1234567,1,1,3000,"concreto",1,"andamento","12:10",1);

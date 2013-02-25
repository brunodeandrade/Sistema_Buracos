SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `BD_Sistema_De_Buracos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `BD_Sistema_De_Buracos` ;

-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Ordem de trabalho`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Ordem_de_trabalho` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Ordem_trabalho` (
  `id_trabalho` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Ordem de Trabalho' ,
  `Buraco_id` INT(11) NOT NULL COMMENT 'Código do Buraco referente á Ordem' ,
  `Equipe_Reparo_matricula_representante` INT(11) NOT NULL COMMENT 'Matricula do Representante da Equipe' ,
  `Equipe_Reparo_Funcionario_matricula` INT(11) NOT NULL COMMENT 'Matricula dos Funcionparios' ,
  `Equipe_Reparo_Funcionario_Pessoa_cpf` INT(11) NOT NULL COMMENT 'CPF dos funcionários' ,
  `Equipe_Reparo_Equipamento_numero_de_serie` INT(11) NOT NULL COMMENT 'Número de série do equipameto Utilizado' ,
  `custo` FLOAT NOT NULL COMMENT 'Custo do conserto baseado nas horas de trabalho, equipe envolvida, materiais e equipamento' ,
  `materiais` TEXT NOT NULL COMMENT 'Materiais utilizados no conserto' ,
  `numero_pessoas` INT(11) NOT NULL COMMENT 'Número de Pessoas envolvidas na equipe' ,
  `status_` INT(11) NOT NULL COMMENT 'Status do serviço (concluído, em andamento, etc)' ,
  `horas` TEXT NOT NULL COMMENT 'Quantidade de horas demandadas para o trabalho' ,
  PRIMARY KEY (`id_trabalho`, `Buraco_id`, `Equipe_Reparo_matricula_representante`, `Equipe_Reparo_Funcionario_matricula`, `Equipe_Reparo_Funcionario_Pessoa_cpf`, `Equipe_Reparo_Equipamento_numero_de_serie`) ,
  INDEX `Ordem_trabalho_FKIndex1` (`Buraco_id` ASC) ,
  INDEX `Ordem_trabalho_FKIndex2` (`Equipe_Reparo_matricula_representante` ASC, `Equipe_Reparo_Funcionario_matricula` ASC, `Equipe_Reparo_Funcionario_Pessoa_cpf` ASC, `Equipe_Reparo_Equipamento_numero_de_serie` ASC) )
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Uf`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Uf` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Uf` (
  `idUf` INT NOT NULL ,
  `descricao_uf` VARCHAR(45) NULL ,
  PRIMARY KEY (`idUf`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Cidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Cidade` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Cidade` (
  `idCidade` INT NOT NULL ,
  `descCidade` VARCHAR(250) NULL ,
  `DDD` INT NULL ,
  `Uf_idUf` INT NOT NULL ,
  PRIMARY KEY (`idCidade`, `Uf_idUf`) ,
  INDEX `fk_Cidade_Uf1` (`Uf_idUf` ASC) ,
  CONSTRAINT `fk_Cidade_Uf1`
    FOREIGN KEY (`Uf_idUf` )
    REFERENCES `BD_Sistema_De_Buracos`.`Uf` (`idUf` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Endereco` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Endereco` (
  `idEndereco` INT(11) NOT NULL AUTO_INCREMENT ,
  `rua` VARCHAR(250) NULL ,
  `bairro` VARCHAR(250) NULL ,
  `numero` VARCHAR(250) NULL ,
  `cep` INT NULL ,
  `complemento` VARCHAR(250) NULL ,
  `Cidade_idCidade` INT NOT NULL ,
  PRIMARY KEY (`idEndereco`, `Cidade_idCidade`) ,
  INDEX `fk_Endereco_Cidade1` (`Cidade_idCidade` ASC) ,
  CONSTRAINT `fk_Endereco_Cidade1`
    FOREIGN KEY (`Cidade_idCidade` )
    REFERENCES `BD_Sistema_De_Buracos`.`Cidade` (`idCidade` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Buraco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Buraco` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Buraco` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Código de identificação do buraco' ,
  `tamanho` VARCHAR(250) NULL COMMENT 'Tamanho do Buraco (de 1 a 9)' ,
  `localizacao` VARCHAR(250) NULL COMMENT 'Localização espacial do buraco na rua (No meio, asfalto, etc)' ,
  `prioridade` VARCHAR(250) NULL COMMENT 'Prioridade de conserto baseado no tamanho do buraco' ,
  `Endereco_idEndereco` INT(11) NOT NULL ,
  PRIMARY KEY (`id`, `Endereco_idEndereco`) ,
  INDEX `fk_Buraco_Endereco1` (`Endereco_idEndereco` ASC) ,
  CONSTRAINT `fk_Buraco_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco` )
    REFERENCES `BD_Sistema_De_Buracos`.`Endereco` (`idEndereco` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Sexo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Sexo` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Sexo` (
  `idSexo` INT NOT NULL ,
  `descricao_sexo` VARCHAR(250) NULL ,
  PRIMARY KEY (`idSexo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Pessoa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Pessoa` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Pessoa` (
  `cpf` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'CPF da pessoa' ,
  `telefone` INT(11) NOT NULL COMMENT 'Telefone da pessoa' ,
  `nome_pai` VARCHAR(250) NULL ,
  `nome_mae` VARCHAR(250) NOT NULL ,
  `Endereco_idEndereco` INT(11) NOT NULL ,
  `Sexo_idSexo` INT NOT NULL ,
  `nome_solteiro` VARCHAR(250) NOT NULL ,
  `nome_casado` VARCHAR(250) NULL ,
  PRIMARY KEY (`cpf`, `Endereco_idEndereco`, `Sexo_idSexo`) ,
  INDEX `fk_Pessoa_Endereco1` (`Endereco_idEndereco` ASC) ,
  INDEX `fk_Pessoa_Sexo1` (`Sexo_idSexo` ASC) ,
  CONSTRAINT `fk_Pessoa_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco` )
    REFERENCES `BD_Sistema_De_Buracos`.`Endereco` (`idEndereco` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Sexo1`
    FOREIGN KEY (`Sexo_idSexo` )
    REFERENCES `BD_Sistema_De_Buracos`.`Sexo` (`idSexo` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Dano_Ocorrido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Dano_Ocorrido` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Dano_Ocorrido` (
  `Buraco_id` INT(11) NOT NULL COMMENT 'Código do buraco ' ,
  `Pessoa_cpf` INT(11) NOT NULL COMMENT 'CPF da pessoa a ser indenizada' ,
  `tipo` TEXT NOT NULL COMMENT 'Tipo de dano sofrido' ,
  PRIMARY KEY (`Buraco_id`, `Pessoa_cpf`) ,
  INDEX `Dano_ocorrido_FKIndex1` (`Buraco_id` ASC) ,
  INDEX `Dano_ocorrido_FKIndex2` (`Pessoa_cpf` ASC) ,
  CONSTRAINT `fk_{20FE9EA7-86EA-4BFC-96B9-D8CA7C6F2020}`
    FOREIGN KEY (`Buraco_id` )
    REFERENCES `BD_Sistema_De_Buracos`.`Buraco` (`id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_{BA3DB043-04E5-4EF8-86CC-80E8959BE76D}`
    FOREIGN KEY (`Pessoa_cpf` )
    REFERENCES `BD_Sistema_De_Buracos`.`Pessoa` (`cpf` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Ordem_de_Servico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Ordem_de_Servico` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Ordem_de_Servico` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Ordem de Serviço' ,
  `tipo` VARCHAR(250) NOT NULL COMMENT 'Tipo de ordem de serviço' ,
  `ids_servicos_prestados` VARCHAR(250) NULL COMMENT 'Código dos serviços prestados' ,
  PRIMARY KEY (`id`) )
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Funcionario` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Funcionario` (
  `matricula` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Matrícula do funcionário na empresa' ,
  `Pessoa_cpf` INT(11) NOT NULL COMMENT 'CPF do funcionário' ,
  PRIMARY KEY (`matricula`, `Pessoa_cpf`) ,
  INDEX `Funcionário_FKIndex1` (`Pessoa_cpf` ASC) ,
  CONSTRAINT `fk_{723B9B61-2146-40AB-9694-DF3B6137E2C7}`
    FOREIGN KEY (`Pessoa_cpf` )
    REFERENCES `BD_Sistema_De_Buracos`.`Pessoa` (`cpf` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Equipamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Equipamento` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Equipamento` (
  `numero_de_serie` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Número de série do equipamento' ,
  `funcao` VARCHAR(250) NOT NULL COMMENT 'Função do equipamento' ,
  `tipo` VARCHAR(250) NOT NULL COMMENT 'Tipo de equipamento' ,
  PRIMARY KEY (`numero_de_serie`) )
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Equipe_Reparo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Equipe_Reparo` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Equipe_Reparo` (
  `matricula_representante` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Matrícula do representante da equipe' ,
  `Funcionario_matricula` INT(11) NOT NULL COMMENT 'Matrícula do funcionário' ,
  `Equipamento_numero_de_serie` INT(11) NOT NULL COMMENT 'Número de série do equipamento' ,
  `Funcionario_Pessoa_cpf` INT(11) NOT NULL ,
  `numero_funcionarios` INT(11) NOT NULL COMMENT 'Quantidade de funcionários alocados' ,
  PRIMARY KEY (`matricula_representante`, `Funcionario_matricula`, `Equipamento_numero_de_serie`, `Funcionario_Pessoa_cpf`) ,
  INDEX `Equipe de Reparos_FKIndex1` (`Funcionario_matricula` ASC, `Funcionario_Pessoa_cpf` ASC) ,
  INDEX `Equipe de Reparos_FKIndex2` (`Equipamento_numero_de_serie` ASC) ,
  CONSTRAINT `fk_{17D816B9-6BDF-470F-ADCE-B89A42117480}`
    FOREIGN KEY (`Funcionario_matricula` , `Funcionario_Pessoa_cpf` )
    REFERENCES `BD_Sistema_De_Buracos`.`Funcionario` (`matricula` , `Pessoa_cpf` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_{16F5B4EB-CB7D-4F0B-BE66-4BC6258E2430}`
    FOREIGN KEY (`Equipamento_numero_de_serie` )
    REFERENCES `BD_Sistema_De_Buracos`.`Equipamento` (`numero_de_serie` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;



-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Cidadao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Cidadao` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Cidadao` (
  `idCidadao` INT NOT NULL ,
  `Pessoa_cpf` INT(11) NOT NULL ,
  `Pessoa_Endereco_idEndereco` INT(11) NOT NULL ,
  `Pessoa_Sexo_idSexo` INT NOT NULL ,
  PRIMARY KEY (`idCidadao`, `Pessoa_cpf`, `Pessoa_Endereco_idEndereco`, `Pessoa_Sexo_idSexo`) ,
  INDEX `fk_Cidadao_Pessoa1` (`Pessoa_cpf` ASC, `Pessoa_Endereco_idEndereco` ASC, `Pessoa_Sexo_idSexo` ASC) ,
  CONSTRAINT `fk_Cidadao_Pessoa1`
    FOREIGN KEY (`Pessoa_cpf` , `Pessoa_Endereco_idEndereco` , `Pessoa_Sexo_idSexo` )
    REFERENCES `BD_Sistema_De_Buracos`.`Pessoa` (`cpf` , `Endereco_idEndereco` , `Sexo_idSexo` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `BD_Sistema_De_Buracos`.`Indenizacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BD_Sistema_De_Buracos`.`Indenizacao` ;

CREATE  TABLE IF NOT EXISTS `BD_Sistema_De_Buracos`.`Indenizacao` (
  `idIndenizacao` INT(11) NOT NULL AUTO_INCREMENT ,
  `valor` INT(11) NULL ,
  `Dano_Ocorrido_Buraco_id` INT(11) NOT NULL ,
  `Dano_Ocorrido_Pessoa_cpf` INT(11) NOT NULL ,
  PRIMARY KEY (`idIndenizacao`, `Dano_Ocorrido_Buraco_id`, `Dano_Ocorrido_Pessoa_cpf`) ,
  INDEX `fk_Indenizacao_Dano_Ocorrido1` (`Dano_Ocorrido_Buraco_id` ASC, `Dano_Ocorrido_Pessoa_cpf` ASC) ,
  CONSTRAINT `fk_Indenizacao_Dano_Ocorrido1`
    FOREIGN KEY (`Dano_Ocorrido_Buraco_id` , `Dano_Ocorrido_Pessoa_cpf` )
    REFERENCES `BD_Sistema_De_Buracos`.`Dano_Ocorrido` (`Buraco_id` , `Pessoa_cpf` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
PACK_KEYS = 0
ROW_FORMAT = DEFAULT;

USE `BD_Sistema_De_Buracos` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

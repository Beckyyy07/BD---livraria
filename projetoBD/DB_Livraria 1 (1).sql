-- MySQL Script generated by MySQL Workbench
-- Thu Oct 12 16:31:25 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8 ;
USE mydb ;

-- -----------------------------------------------------
-- Table mydb.autores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.autores (
  idAutor INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  biografia VARCHAR(100) NOT NULL,
  nacionalidade VARCHAR(45) NOT NULL,
  dataNascimento DATE NOT NULL,
  obras VARCHAR(45) NULL,
  PRIMARY KEY (idAutor))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.exemplares
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.exemplares (
  numeroSerie INT NOT NULL,
  estado VARCHAR(45) NOT NULL,
  localizacao VARCHAR(45) NOT NULL,
  PRIMARY KEY (numeroSerie))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.areasDeConhecimento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.areasDeConhecimento (
  codigoDaArea INT NOT NULL,
  areaDeConhecimento VARCHAR(45) NOT NULL,
  descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (codigoDaArea))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.livros
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.livros (
  ISBN INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(45) NOT NULL,
  autor VARCHAR(45) NOT NULL,
  editora VARCHAR(45) NOT NULL,
  dataPublicacao DATE NOT NULL,
  genero VARCHAR(45) NOT NULL,
  numeroPaginas VARCHAR(45) NOT NULL,
  descricao VARCHAR(45) NULL,
  autores_idAutor INT NOT NULL,
  exemplares_numeroSerie INT NOT NULL,
  areasDeConhecimento_codigoDaArea INT NOT NULL,
  PRIMARY KEY (ISBN),
  INDEX fk_livros_autores1_idx (autores_idAutor ASC),
  INDEX fk_livros_exemplares1_idx (exemplares_numeroSerie ASC),
  INDEX fk_livros_areasDeConhecimento1_idx (areasDeConhecimento_codigoDaArea ASC),
  CONSTRAINT fk_livros_autores1
    FOREIGN KEY (autores_idAutor)
    REFERENCES mydb.autores (idAutor)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_livros_exemplares1
    FOREIGN KEY (exemplares_numeroSerie)
    REFERENCES mydb.exemplares (numeroSerie)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_livros_areasDeConhecimento1
    FOREIGN KEY (areasDeConhecimento_codigoDaArea)
    REFERENCES mydb.areasDeConhecimento (codigoDaArea)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.departamentos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.departamentos (
  iddepartamentos INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  responsavel VARCHAR(45) NOT NULL,
  descricaoAtividade VARCHAR(45) NOT NULL,
  PRIMARY KEY (iddepartamentos))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.palavrasChave
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.palavrasChave (
  palavrasChave VARCHAR(45) NOT NULL,
  código INT NOT NULL,
  descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (código))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.funcionarios
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.funcionarios (
  idfuncionarios INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  cargo VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) NOT NULL,
  departamentos_iddepartamentos INT NOT NULL,
  PRIMARY KEY (idfuncionarios),
  INDEX fk_funcionarios_departamentos_idx (departamentos_iddepartamentos ASC),
  CONSTRAINT fk_funcionarios_departamentos
    FOREIGN KEY (departamentos_iddepartamentos)
    REFERENCES mydb.departamentos (iddepartamentos)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table mydb.pedidosEVendas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.pedidosEVendas (
  idpedidosEVendas INT NOT NULL,
  cliente VARCHAR(45) NULL,
  dataTransacao VARCHAR(45) NULL,
  statusPedido VARCHAR(45) NULL,
  pagamento VARCHAR(45) NULL,
  funcionarios_idfuncionarios INT NOT NULL,
  livros_ISBN INT NOT NULL,
  PRIMARY KEY (idpedidosEVendas),
  INDEX fk_pedidosEVendas_funcionarios1_idx (funcionarios_idfuncionarios ASC) VISIBLE,
  INDEX fk_pedidosEVendas_livros1_idx (livros_ISBN ASC) VISIBLE,
  CONSTRAINT fk_pedidosEVendas_funcionarios1
    FOREIGN KEY (funcionarios_idfuncionarios)
    REFERENCES mydb.funcionarios (idfuncionarios)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_pedidosEVendas_livros1
    FOREIGN KEY (livros_ISBN)
    REFERENCES mydb.livros (ISBN)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.livros_has_palavrasChave
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.livros_has_palavrasChave (
  livros_ISBN INT NOT NULL,
  palavrasChave_código INT NOT NULL,
  PRIMARY KEY (livros_ISBN, palavrasChave_código),
  INDEX fk_livros_has_palavrasChave_palavrasChave1_idx (palavrasChave_código ASC),
  INDEX fk_livros_has_palavrasChave_livros1_idx (livros_ISBN ASC),
  CONSTRAINT fk_livros_has_palavrasChave_livros1
    FOREIGN KEY (livros_ISBN)
    REFERENCES mydb.livros (ISBN)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_livros_has_palavrasChave_palavrasChave1
    FOREIGN KEY (palavrasChave_código)
    REFERENCES mydb.palavrasChave (código)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


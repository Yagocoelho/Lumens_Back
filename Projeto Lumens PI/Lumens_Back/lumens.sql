-- MySQL Script generated by MySQL Workbench
-- Wed Jan 26 11:01:03 2022
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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produto` (
  `id_prdutos` BIGINT NOT NULL,
  `nome_Produto` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(6,2) NOT NULL,
  `id_categoria` BIGINT NULL,
  `id_usuario` BIGINT NULL,
  PRIMARY KEY (`id_prdutos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categoria` (
  `id_categoria` BIGINT NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  `produto` VARCHAR(100) NOT NULL,
  `setor` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  CONSTRAINT `fk_categoria_produto`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `mydb`.`produto` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `id_usuario` BIGINT NOT NULL,
  `nome_completo` VARCHAR(200) NOT NULL,
  `senha` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_usuario_produto1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`produto` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

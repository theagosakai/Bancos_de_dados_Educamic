CREATE SCHEMA IF NOT EXISTS `bd_salao` DEFAULT CHARACTER SET utf8mb4 ;
USE `bd_salao` ;

-- -----------------------------------------------------
-- Table `bd_salao`.`tb_agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_agendamento` (
  `id_funcionario_agendamento` VARCHAR(50) NOT NULL,
  `cd_valor` VARCHAR(50) NOT NULL,
  `cd_cliente_agendamento` VARCHAR(50) NOT NULL,
  `cd_data_agendamento` VARCHAR(50) NOT NULL,
  `cd_servico_agendamento` VARCHAR(50) NOT NULL,
  `cd_hora_agendamento` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_funcionario_agendamento`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;



-- -----------------------------------------------------
-- Table `bd_salao`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_produtos` (
  `Id_produto_nome` VARCHAR(50) NOT NULL,
  `Id_valor_compra` VARCHAR(50) NOT NULL,
  `Id_quantidade` VARCHAR(50) NOT NULL,
  `cd_descricao_produto` VARCHAR(50) NOT NULL,
  `cd_valor_venda` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id_produto_nome`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `bd_salao`.`tb_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_servico` (
  `id_servico` VARCHAR(50) NOT NULL,
  `cd_data` VARCHAR(50) NOT NULL,
  `cd_horario` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_servico`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bd_salao`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_usuarios` (
  `id_Usuario` VARCHAR(50) NOT NULL,
  `ds_CPF` VARCHAR(50) NOT NULL,
  `ds_Senha` VARCHAR(50) NOT NULL,
  `ds_Email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_Usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `bd_salao`.`tb_vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_vendas` (
  `id_produto_venda` VARCHAR(50) NOT NULL,
  `cd_cliente` VARCHAR(50) NOT NULL,
  `cd_valor` VARCHAR(50) NOT NULL,
  `cd_quantidade` VARCHAR(50) NOT NULL,
  `cd_estoque` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_produto_venda`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Table `bd_salao`.`tb_clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_salao`.`tb_clientes` (
  `id_nome_cliente` VARCHAR(50) NOT NULL,
  `cd_valor_compra` VARCHAR(50) NOT NULL,
  `cd_quantidade_cliente` VARCHAR(50) NOT NULL,
  `cd_desc_cliente` VARCHAR(50) NOT NULL,
  `cd_valor_venda_cliente` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_nome_cliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;
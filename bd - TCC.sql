create database bd_TCC character set = 'utf8' collate = 'utf8_general_ci';

use bd_TCC;

create table if not exists tb_escola(
  cd_escola int ,
  nm_escola varchar (45),
constraint pk_escola
	primary key (cd_escola))
ENGINE = InnoDB; 

create table if not exists tb_aluno(
id_aluno int,
nm_aluno varchar(45),
cd_cpf char(11),
nm_curso varchar(45),
cd_RM char(5),
tp_sexo varchar(15),
nm_email varchar(35),
cd_senha varchar(15),
constraint pk_aluno
    primary key (id_aluno))
ENGINE = InnoDB;
        
create table if not exists tb_funcionario(
  id_funcionario Int,
  cd_RM Char(5),
  cd_cpf char(11),
  nm_funcionario varchar(45),
  nm_funcao varchar(20),
  tp_sexo varchar(15),
constraint pk_funcionario
	primary key (id_funcionario))
ENGINE = InnoDB;

create table if not exists tb_contato_escola(
  cd_contato_escola int,
  cd_escola int ,
constraint pk_contato
	primary key (cd_contato_escola),
constraint fk_contato_escola_escola
   foreign key(cd_escola)
       references tb_escola(cd_escola))
ENGINE = InnoDB;

create table if not exists tb_contato_aluno(
  cd_contato_aluno int,
  id_aluno int ,
constraint pk_contato
	primary key (cd_contato_aluno),
constraint fk_contato_aluno_aluno
   foreign key(id_aluno)
       references tb_aluno(id_aluno))
ENGINE = InnoDB;
       
create table if not exists tb_contato_funcionario(
  cd_contato_funcionario int,
  id_funcionario int ,
constraint pk_contato
	primary key (cd_contato_funcionario),
constraint fk_contato_funcionario_funcionario
   foreign key(id_funcionario)
       references tb_funcionario(id_funcionario))
ENGINE = InnoDB;

create table if not exists tb_imagem(
`codigo` int not null auto_increment,
`imagem` longblob not null,

constraint pk_codigo
	primary key (codigo))
Engine = InnoDB;

select * from tb_aluno;


 



       
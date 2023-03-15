create database vagafácil;
use vagafácil;
create table dadosPessoa(
idUser int primary key auto_increment,
nomeCompleto varchar(40),
dataNascimento date,
cpf char (14) unique,
celular char (11),
endereco varchar(50),
senha varchar (255),
email varchar(80));

create table tipoDeVaga(
idTipo int primary key auto_increment,
tipo varchar(40));

create table veiculo(
idCarro int primary key auto_increment,
placa varchar(8),
siglaPais varchar(3),
tipoCarro varchar(20));

create table vagas(
idVaga int primary key auto_increment);

create table dadoBruto(
dataTempo datetime,
disponibilidade varchar(1));

create table dadosEmpresa(
idEmpresa int primary key auto_increment,
cnpj char(18),
enderecoEmpresa varchar(40),
nomeFantasia varchar(40),
email varchar(40),
tel varchar(20),
dataInicioContrato date,
dataFinalContrato date);



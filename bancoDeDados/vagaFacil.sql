create database vagaFacil;
use vagaFacil;

create table dadosPessoa(
idUser int primary key auto_increment,
nomeCompleto varchar(40),
dataNascimento date,
cpf char (14) unique,
celular char (11),
endereco varchar(50),
senha varchar (255),
email varchar(80) unique,
idTipo int
);

create table tipoDeVaga(
idTipo int primary key auto_increment,
tipo varchar(40) unique
);

create table veiculo(
idCarro int primary key auto_increment,
placa varchar(8) unique,
idEstado int,
siglaPais varchar(3),
idUser int,
tipoVeiculo int

);

create table tipoVeiculo(
idTipo int primary key auto_increment,
tipo varchar(20) unique
);


create table vagas(
idVaga int primary key auto_increment,
idTipo int,
idBairro int

);

create table dadoBruto(
dataTempo datetime,
disponibilidade char(1),
idVaga int,
idUser int

);

create table preferencias(
idBairro int,
idUser int,
datas date,
tempo time

);

create table historico(
idBairro int,
dataHota datetime,
indiceOcupacao int

);

create table dadosEmpresa(
idEmpresa int primary key auto_increment,
cnpj char(18) unique,
endereco varchar(40),
nomeFantasia varchar(40),
email varchar(40) unique,
tel varchar(20),
dataInicioContrato date,
dataFinalContrato date
);

create table bairro(
idBairro int primary key auto_increment,
nome varchar(40),
qtdVagas int,
idCidade int,
horarioSemanal datetime,
horarioFinalDeSemana datetime
);

create table antiFurto(
idUser int,
idVaga int,
horarioSaida time,
furto char(1)

);

create table rua(
idRua int primary key auto_increment,
nome varchar(40),
cep char(9)

);	

create table estado(
idEstado int primary key auto_increment,
nome varchar(40),
sigla char(2)

);





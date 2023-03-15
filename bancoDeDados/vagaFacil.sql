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

insert into dadosPessoa value
 (NULL,'Gumercindo da Silva', '1998-03-31','123.456.789-01', '11997826001', 'Rua Bom Pastor 1011', 'Batatinha', 'gumercindo.silva@Outlook.com', 1 ),
 (NULL, 'Diogo Almeida', '1988-07-02', '478.992.123-24', '11957642998','Rua Mendonça Uchoa 1200','hashi_no_bolso',  'diogo.borges@gmail.com', 5),
 (NULL, 'Mariana de Almeida', '1999-07-13', '935.762.876-74', '11983651004','Rua Palanque 548', 'Batata_doce', 'mariana.almeida@hotmail.com', 5),
 (NULL, 'Arthur Aguiar', '2001-11-11', '678.125.437-56', '11997652998','Rua Aristeu Valente','llamem123', 'arthur.aguiar@outlook.com', 3 ),
 (NULL, 'Martha Simpson', '1995-06-02', '965.387.500-31', '11987341875','AV.Paulista 1100','Salada_sem_tempero', 'martha.simpson@hotmail', 4),
 (NULL, 'Fernanda Braguini', '2002-08-20', '793.678.165-76', '1199784567','Rua Cerrana Fluminense 182','senha123', 'fernanda.braguini@outlook.com', 4),
 (Null, 'Caroline Bosieli', '1951-05-07', '666.798.455-63', '11976491778','Rua Morro do Valongo 1674','Queijo#derretido', 'caroline.bosieli@hotmail', 2);

create table tipoDeVaga(
idTipo int primary key auto_increment,
tipo varchar(40) unique
);

INSERT INTO tipoDeVaga VALUE
(NULL, 'Comum'),
(NULL, 'Idoso'),
(NULL, 'PCD'),
(NULL, 'Caminhões'),
(NULL, 'Fretado');

create table veiculo(
idCarro int primary key auto_increment,
placa varchar(8) unique,
idEstado int,
siglaPais varchar(3),
idUser int,
tipoVeiculo int);
insert into veiculo values 
(NULL,'CMC-4345','11','BR','1','1'),
(NULL,'AMC-4231','11','BR','2','4'),
(NULL,'KAL-5671','11','BR','3','2'),
(NULL,'CWA-6785','11','BR','4','3'),
(NULL,'SBC-4215','11','BR','5','4'),
(NULL,'jMC-3456','11','BR','6','4'),
(NULL,'YUk-3575','11','BR','7','2');

create table tipoVeiculo(
idTipo int primary key auto_increment,
tipo varchar(20) unique
);
insert into tipoVeiculo values 
(NULL, 'Carro'),
(NULL, 'Moto'),
(NULL, 'Caminhão'),
(NULL, 'Ônibus (fretado)');





create table bairro(
idBairro int primary key auto_increment,
nome varchar(40),
qtdVagas int,
idCidade int,
horarioSemanal datetime,
horarioFinalDeSemana datetime
);
insert into bairro values 
(NULL,'Casa Verde', 10, 7, '2023-02-13 06:04:00', '2023-07-13 07:04:00' ),
(NULL,'Liberdade', 10, 7, '2023-02-13 13:00', '2022-02-13 10:04:00' ),
(NULL,'Sé', 10, 7, '2023-02-13 13:00', '2019-02-13 06:04:00' ),
(NULL,'Jabaquara', 10, 7, '2023-02-13 13:00', '2018-02-13 06:04:00'),
(NULL,'Capão Redondo', 10, 7, '2023-02-13 13:00', '2030-02-13 06:04:00' ),
(NULL,'Casa Verde', 10, 7, '2023-02-13 13:00','2023-02-13 06:04:00');

create table vagas(
idVaga int primary key auto_increment,
idTipo int,
idBairro int
);
insert into vagas values 
(NULL,1,'1'),
(NULL,3, 2),
(NULL,5, 3),
(NULL,1, 4),
(NULL,1, 5),
(NULL,3, 6),
(NULL,3, 7),
(NULL,4, 8),
(NULL,4, 9); 


create table dadoBruto(
dataTempo datetime,
disponibilidade char(1),
idVaga int,
idUser int
);

insert into dadoBruto values 
('2023-02-13 13:00:04','1',1,1),
('2022-02-13 15:00:04','1',4,2),
('2018-02-13 13:00:04','1',5,3),
('2023-02-03 13:00:04','1',1,4),
('2023-02-13 13:00:04','1',1,5),
('2022-02-03 13:00:04','1',2,6),
('2023-02-13 13:00:04','1',3,7);

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


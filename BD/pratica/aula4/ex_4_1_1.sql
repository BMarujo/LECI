if object_id('Ligeiro', 'U') is not null
    drop table Ligeiro
if object_id('Pesado', 'U') is not null
    drop table Pesado
if object_id('Similaridade', 'U') is not null
    drop table Similaridade
if object_id('Aluguer', 'U') is not null
    drop table Aluguer
if object_id('Balcao', 'U') is not null
    drop table Balcao
if object_id('Cliente', 'U') is not null
    drop table Cliente
if object_id('Veiculo', 'U') is not null
    drop table Veiculo
if object_id('Tipo_veiculo', 'U') is not null
    drop table Tipo_veiculo

CREATE TABLE Tipo_veiculo (
    Codigo int not null,
    Ar_condicionado bit not null,
    Desig varchar(100) not null,
    primary key (Codigo)
)

CREATE TABLE Cliente (
    nif int not null,
    Num_carta int not null,
    Nome varchar(100) not null,
    Endereco varchar(100) not null,
    Primary key (nif)
)

CREATE TABLE Veiculo (
    Matricula varchar(20) not null,
    Marca varchar(100) not null,
    Ano int not null,
    Tipo_veiculo int not null,
    Primary key (Matricula),
    foreign key (Tipo_veiculo) references Tipo_veiculo (Codigo)
)

CREATE TABLE Ligeiro (
    Id int not null identity(1,1),
    Tv_cod int not null,
    Passageiros int not null,
    Peso int not null,
    foreign key (Tv_cod) references Tipo_veiculo (Codigo),
    primary key (Id)
)

CREATE TABLE Pesado (
    Id int not null identity(1,1),
    Tv_cod int not null,
    Passageiros int not null,
    Peso int not null,
    foreign key (Tv_cod) references Tipo_veiculo (Codigo),
    primary key (Id)
)

CREATE TABLE Similaridade (
    TV_cod1 int not null,
    TV_cod2 int not null,
    foreign key (TV_cod1) references Tipo_veiculo (Codigo),
    foreign key (TV_cod2) references Tipo_veiculo (Codigo),
    primary key (TV_cod1, TV_cod2)
)

CREATE TABLE Balcao (
    Numero int not null,
    Nome varchar(100) not null,
    Endereco varchar(100) not null,
    Primary key (Numero)
)

CREATE TABLE Aluguer (
    Numero int not null,
    Duracao int not null,
    [Data] date not null,
    Cliente_nif int not null,
    Balcao_numero int not null,
    Veiculo_matricula varchar(20) not null,
    foreign key (Cliente_nif) references Cliente (nif),
    foreign key (Balcao_numero) references Balcao (Numero),
    foreign key (Veiculo_matricula) references Veiculo (Matricula),
    Primary key (Numero)
)

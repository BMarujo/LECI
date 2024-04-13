if object_id('Prescricao', 'U') is not null
    drop table Prescricao
if object_id('Farmacia', 'U') is not null
    drop table Farmacia
if object_id('Medico', 'U') is not null
    drop table Medico
if object_id('Paciente', 'U') is not null
    drop table Paciente
if object_id('Tem', 'U') is not null
    drop table Tem
if object_id('Farmaco', 'U') is not null
    drop table Farmaco
if object_id('Farmaceutica', 'U') is not null
    drop table Farmaceutica

create table Farmaceutica (
	N_registo int not null,
	Nome varchar not null,
	Morada varchar not null,
	Telefone int not null
	primary key (N_registo)
)

create table Farmaco (
	Farmaceutica_n_registo int not null,
	Formula varchar not null,
	Nome_farmaceutico varchar not null,
	Nome_comercial varchar not null,
	primary key (Farmaceutica_n_registo),
	unique (Nome_farmaceutico),
	foreign key (Farmaceutica_n_registo) references Farmaceutica(N_registo)
)

create table Tem (
	Id int not null identity(1,1),
	Prescricao_NUP int not null,
	Farmaco_nome varchar not null,
	primary key (Id),
	unique (Prescricao_NUP),
	foreign key (Farmaco_nome) references Farmaco (Nome_farmaceutico)
)

create table Paciente (
	N_utente int not null,
	Data_nascimento varchar not null,
	Morada varchar not null,
	Nome varchar not null
	primary key (N_utente)
)

create table Medico (
	N_SNS int not null,
	Nome varchar not null,
	Especialidade varchar not null,
	primary key (N_SNS)
)

create table Farmacia (
	NIF int not null,
	Nome varchar not null,
	Morada varchar not null,
	Telefonee int not null,
	primary key (NIF)
)

create table Prescricao (
	NUP int not null,
	Paciente_n_utente int not null,
	[Data] varchar not null,
	Medico_N_SNS int not null,
	Farmacia_NIF int not null,
	primary key (NUP),
	foreign key (NUP) references Tem (Prescricao_NUP),
	foreign key (Paciente_n_utente) references Paciente (N_utente),
	foreign key (Medico_N_SNS) references Medico (N_SNS),
	foreign key (Farmacia_NIF) references Farmacia (NIF)
)
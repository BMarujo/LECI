if object_id('Encarregado', 'U') is not null
    drop table Encarregado
if object_id('Frequenta', 'U') is not null
    drop table Frequenta
if object_id('Aluno', 'U') is not null
    drop table Aluno
if object_id('Professor', 'U') is not null
    drop table Professor
if object_id('Pessoa', 'U') is not null
    drop table Pessoa
if object_id('Tem_AA', 'U') is not null
    drop table Tem_AA
if object_id('Turma', 'U') is not null
    drop table Turma
if object_id('Atividade', 'U') is not null
    drop table Atividade

create table Turma (
	Id int not null identity(1,1),
	Designacao varchar not null,
	Ano_letivo varchar not null,
	Max_alunos int not null,
	primary key (Id),
)

create table Atividade (
	Id int not null identity(1,1),
	Designacao varchar not null,
	Custo int not null,
	primary key (Id)
)

create table Tem_AA (
	Id_atividade int not null,
	Id_turma int not null,
	primary key (Id_atividade, Id_turma),
	foreign key (Id_atividade) references Atividade (Id),
	foreign key (Id_turma) references Turma (Id)
)

create table Pessoa (
	Nome varchar not null,
	Data_nascimento varchar not null,
	Morada varchar not null,
	CC int not null,
	primary key (CC)
)

create table Professor (
	Id_turma int not null,
	Email varchar not null,
	N_funcionario int not null,
	Telefone int not null,
	CC int not null,
	primary key (Id_turma, Email),
	foreign key (Id_turma) references Turma (Id),
	foreign key (CC) references Pessoa (CC)
)

create table Aluno (
	Id int not null,
	CC int not null,
	primary key (Id),
	unique (CC),
	foreign key (CC) references Pessoa (CC),
)

create table Frequenta (
	Id_atividade int not null,
	Id_aluno int not null,
	Id_turma int not null,
	primary key (Id_atividade),
	foreign key (Id_atividade) references Atividade (Id),
	foreign key (Id_aluno) references Aluno (Id),
	foreign key (Id_turma) references Turma (Id)
)

create table Encarregado (
	Email varchar not null,
	CC_educando int not null,
	Telefone int not null,
	Autorizado bit not null,
	primary key (Email),
	foreign key (CC_educando) references Aluno (CC)
)
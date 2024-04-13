if object_id('presc_farmaco', 'U') is not null
    drop table presc_farmaco
if object_id('prescricao', 'U') is not null
    drop table prescricao
if object_id('farmaco', 'U') is not null
    drop table farmaco
if object_id('farmaceutica', 'U') is not null
    drop table farmaceutica
if object_id('farmacia', 'U') is not null
    drop table farmacia
if object_id('paciente', 'U') is not null
    drop table paciente
if object_id('medico', 'U') is not null
	drop table medico

CREATE TABLE medico (
    numSNS INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

CREATE TABLE paciente (
    numUtente INT PRIMARY KEY,
    nome VARCHAR(100),
    dataNasc DATE,
    endereco VARCHAR(255)
);

CREATE TABLE farmacia (
    nome VARCHAR(100) PRIMARY KEY,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE farmaceutica (
    numReg INT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE farmaco (
    numRegFarm INT,
    nome VARCHAR(100),
    formula VARCHAR(255),
	PRIMARY KEY (numRegFarm, nome),
	FOREIGN KEY (numRegFarm) REFERENCES farmaceutica(numReg)
);

CREATE TABLE prescricao (
    numPresc INT PRIMARY KEY,
    numUtente INT,
    numMedico INT,
    farmacia VARCHAR(100),
    dataProc DATE,
    FOREIGN KEY (numUtente) REFERENCES paciente(numUtente),
    FOREIGN KEY (numMedico) REFERENCES medico(numSNS),
    FOREIGN KEY (farmacia) REFERENCES farmacia(nome)
);

CREATE TABLE presc_farmaco (
    numPresc INT,
    numRegFarm INT,
    nomeFarmaco VARCHAR(100),
    FOREIGN KEY (numPresc) REFERENCES prescricao(numPresc),
    FOREIGN KEY (numRegFarm, nomeFarmaco) REFERENCES farmaco(numRegFarm, nome),
);

IF OBJECT_ID('ArtigoTemAutor', 'U') IS NOT NULL
    DROP TABLE ArtigoTemAutor;

IF OBJECT_ID('Autor', 'U') IS NOT NULL
    DROP TABLE Autor;

IF OBJECT_ID('NãoEstudante', 'U') IS NOT NULL
    DROP TABLE NãoEstudante;

IF OBJECT_ID('Estudante', 'U') IS NOT NULL
    DROP TABLE Estudante;

IF OBJECT_ID('Participante', 'U') IS NOT NULL
    DROP TABLE Participante;

IF OBJECT_ID('ArtigoCientífico', 'U') IS NOT NULL
    DROP TABLE ArtigoCientífico;

IF OBJECT_ID('Instituição', 'U') IS NOT NULL
    DROP TABLE Instituição;

IF OBJECT_ID('Comprovativo', 'U') IS NOT NULL
    DROP TABLE Comprovativo;

IF OBJECT_ID('Conferência', 'U') IS NOT NULL
    DROP TABLE Conferência;

CREATE TABLE Conferência (
    id_conf INT PRIMARY KEY
);

CREATE TABLE Comprovativo (
    localização_eletrónica VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Instituição (
    endereço VARCHAR(100) PRIMARY KEY,
    nome VARCHAR(100),
    localização_comprovativo VARCHAR(100),
    FOREIGN KEY (localização_comprovativo) REFERENCES Comprovativo(localização_eletrónica)
);

CREATE TABLE ArtigoCientífico (
    Nº_do_registo INT PRIMARY KEY,
    título VARCHAR(100),
    data_de_publicação DATE,
    tipo VARCHAR(20),
    id_conf_participa INT,
    FOREIGN KEY (id_conf_participa) REFERENCES Conferência(id_conf)
);

CREATE TABLE Participante (
    morada VARCHAR(100),
    nome VARCHAR(100),
    data_de_inscrição DATE,
    e_mail VARCHAR(100) PRIMARY KEY,
    id_conf_participa INT,
    FOREIGN KEY (id_conf_participa) REFERENCES Conferência(id_conf)
);

CREATE TABLE Estudante (
    data_de_inscrição DATE,
    nome VARCHAR(100),
    e_mail_participante VARCHAR(100) PRIMARY KEY,
    morada VARCHAR(100),
    instituição_endereço VARCHAR(100),
    localização_comprovativo VARCHAR(100),
    FOREIGN KEY (e_mail_participante) REFERENCES Participante(e_mail),
    FOREIGN KEY (instituição_endereço) REFERENCES Instituição(endereço),
    FOREIGN KEY (localização_comprovativo) REFERENCES Comprovativo(localização_eletrónica)
);

CREATE TABLE NãoEstudante (
    data_de_inscrição DATE,
    nome VARCHAR(100),
    e_mail_participante VARCHAR(100) PRIMARY KEY,
    morada VARCHAR(100),
    ref_da_transação VARCHAR(100),
    FOREIGN KEY (e_mail_participante) REFERENCES Participante(e_mail)
);

CREATE TABLE Autor (
    e_mail VARCHAR(100) PRIMARY KEY,
    nome VARCHAR(100),
    instituição_endereço VARCHAR(100),
    FOREIGN KEY (instituição_endereço) REFERENCES Instituição(endereço)
);

CREATE TABLE ArtigoTemAutor (
    autor_e_mail VARCHAR(100),
    artigoNº_do_registo INT,
    PRIMARY KEY (autor_e_mail, artigoNº_do_registo),
    FOREIGN KEY (autor_e_mail) REFERENCES Autor(e_mail),
    FOREIGN KEY (artigoNº_do_registo) REFERENCES ArtigoCientífico(Nº_do_registo)
);

CREATE TABLE tipo_fornecedor(
	codigo INT NOT NULL,
	designacao	VARCHAR(20),
	PRIMARY KEY(codigo),
	UNIQUE(codigo),
);

CREATE TABLE fornecedor(
	nif INT NOT NULL,	
	nome VARCHAR(15),
	fax INT,	
	endereco VARCHAR(40),
	condpag VARCHAR(20),
	tipo INT,
	PRIMARY KEY(nif),
	UNIQUE(nif),
	FOREIGN KEY(tipo) REFERENCES tipo_fornecedor(codigo)
);

CREATE TABLE produto(
	codigo INT NOT NULL,	
	nome VARCHAR(30) NOT NULL,
	preco SMALLMONEY NOT NULL,	
	iva INT DEFAULT 23,
	unidades INT,
	PRIMARY KEY(codigo),
	UNIQUE(codigo)
);

CREATE TABLE encomenda(
	numero INT NOT NULL,	
	[data] DATE,
	fornecedor INT,
	PRIMARY KEY(numero),
	UNIQUE(numero),
	FOREIGN KEY(fornecedor) REFERENCES fornecedor(nif)
);

CREATE TABLE item(
	numEnc INT,	
	codProd INT,
	unidades INT,
	FOREIGN KEY(numEnc) REFERENCES encomenda(numero),
	FOREIGN KEY(codProd) REFERENCES produto(codigo),
);
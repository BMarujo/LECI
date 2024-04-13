IF OBJECT_ID('Produto', 'U') IS NOT NULL
    DROP TABLE Produto;

IF OBJECT_ID('Encomenda', 'U') IS NOT NULL
    DROP TABLE Encomenda;

IF OBJECT_ID('Fornecedor', 'U') IS NOT NULL
    DROP TABLE Fornecedor;

IF OBJECT_ID('TipoFornecedor', 'U') IS NOT NULL
    DROP TABLE TipoFornecedor;

IF OBJECT_ID('Condições_de_pagamento', 'U') IS NOT NULL
    DROP TABLE Condições_de_pagamento;

CREATE TABLE Condições_de_pagamento (
    condição VARCHAR(255),
    PRIMARY KEY (condição)
);

CREATE TABLE TipoFornecedor (
    Código INT,
    designação VARCHAR(255),
    PRIMARY KEY (Código)
);

CREATE TABLE Fornecedor (
    Nome VARCHAR(255),
    NIF INT,
    endereço VARCHAR(255),
    fax INT,
    condições_de_pagamento VARCHAR(255),
    código_tipo_de_fornecedor INT,
    PRIMARY KEY (NIF),
    FOREIGN KEY (código_tipo_de_fornecedor) REFERENCES TipoFornecedor(Código),
    FOREIGN KEY (condições_de_pagamento) REFERENCES Condições_de_pagamento(condição)
);
CREATE TABLE Encomenda (
    Número_de_encomenda INT,
    data DATE,
    fornecedor_NIF INT,
    PRIMARY KEY (Número_de_encomenda),
    FOREIGN KEY (fornecedor_NIF) REFERENCES Fornecedor(NIF)
);

CREATE TABLE Produto (
    Código INT,
    Nome VARCHAR(255),
    Preço DECIMAL(10, 2),
    IVA DECIMAL(10, 2),
    número_de_unidades INT,
    número_da_encomenda INT,
    PRIMARY KEY (Código),
    FOREIGN KEY (número_da_encomenda) REFERENCES Encomenda(Número_de_encomenda)
);
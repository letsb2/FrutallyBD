-- TABELA CLIENTE
CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT UNIQUE
);

-- TABELA PRODUTO
CREATE TABLE produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    categoria TEXT,
    preco REAL CHECK (preco > 0),
    ativo INTEGER DEFAULT 1 CHECK (ativo IN (0,1))
);

-- TABELA VENDA
CREATE TABLE venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    data_hora TEXT DEFAULT CURRENT_TIMESTAMP,
    total REAL CHECK (total >= 0),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- TABELA ITEM_VENDA
CREATE TABLE item_venda (
    id_item INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER CHECK (quantidade > 0),
    preco_unitario REAL CHECK (preco_unitario > 0),
    subtotal REAL CHECK (subtotal >= 0),
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
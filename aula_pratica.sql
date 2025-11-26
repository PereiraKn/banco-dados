CREATE TABLE produtos (
 id INT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 preco DECIMAL(10,2) CHECK (preco > 0),
 codigo_barras VARCHAR(13) UNIQUE,
 estoque INT NOT NULL DEFAULT 0
);
CREATE TABLE pedidos (
 id INT PRIMARY KEY,
 produto_id INT NOT NULL,
 quantidade INT CHECK (quantidade > 0),
 data_pedido DATE NOT NULL,
 FOREIGN KEY (produto_id)
 REFERENCES produtos(id)
);

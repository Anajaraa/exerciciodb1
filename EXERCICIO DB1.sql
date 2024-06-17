-- Crie uma tabela chamada clientes com as colunas: id, nome, email e telefone, idade.


CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY ,
    nome VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,
    telefone VARCHAR(20),
    idade INT
);

-- SELECT  * FROM clientes

-- Adicione cinco registros à tabela clientes com informações fictícias, garantindo que cada registro tenha um valor único para o campo id.
-- https://mockaroo.com/

INSERT INTO clientes (id, nome, email, telefone, idade) VALUES
(1, 'Fannie', 'fglastonbury0@360.cn', '632-538-6403', 30),
(2, 'Marsha', 'mbunstone1@goodreads.com', '572-441-8667', 25),
(3, 'Alverta', 'astearne2@samsung.com', '754-442-8022', 40),
(4, 'Kendall', 'krosenfarb3@networkadvertising.org', '962-660-3726', 35),
(5, 'Roderick', 'raxleby4@rediff.com', '533-706-2279
', 28);

--SELECT * FROM clientes;
--Crie uma tabela chamada produtos com as colunas: codigo, nome, preco e quantidade.

CREATE TABLE IF NOT EXISTS produtos (
    codigo INT PRIMARY KEY ,
    nome VARCHAR(40) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL
);

--SELECT * FROM produtos;


INSERT INTO produtos (codigo,nome, preco, quantidade) VALUES
(1,'Camiseta', 29.99, 50),
(2,'Calça Jeans', 79.90, 30),
(3,'Tênis Esportivo', 129.99, 20);


--SELECT * FROM produtos

--Crie uma tabela chamada itens com as colunas: id, codigo_produto, id_cliente e quantidade. 


CREATE TABLE IF NOT EXISTS itens (
    id SERIAL PRIMARY KEY ,
    codigo_produto INT NOT NULL,
    id_cliente INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (codigo_produto) REFERENCES produtos(codigo),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

--DROP TABLE itens
--SELECT * FROM itens




--Adicione cinco itens à tabela itens, relacionando-os a clientes existentes e produtos disponíveis.

INSERT INTO itens (codigo_produto, id_cliente, quantidade) VALUES
(1, 1, 2),    
(2, 2, 1),    
(3, 3, 3),    
(1, 4, 1),    
(2, 5, 2)

--SELECT * FROM itens
	-- Criar no mínimo duas Views com propostas interessantes ao usuário visualizar

CREATE VIEW produtos_acima_media AS
SELECT codigo, nome, preco, quantidade
FROM produtos ORDER BY preco ASC LIMIT 2 ;

--SELECT * FROM produtos_acima_media;

--DROP VIEW produtos_acima_media;

















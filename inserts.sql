-- Inserindo dados na tabela cliente
INSERT INTO cliente (nome, telefone, email) VALUES
('Letícia Bressanin', '(14) 99848-2753', 'leticiabressanin99@gmail.com'),
('Amanda Pazold', '(14) 99846-665', 'amandapazold02@gmail.com'),
('Vinicius vaes', '(14) 99876-2655', 'viniciusmassagli44@gmail.com'),
('Professor Henrique', '(14)99876-5432', 'professorhenrique@gmail.com'),
('Professor Elvio', '(14) 99876-2233', 'professorelvo@gmail.com'),
('Professor Vinicius', '(14)99876-3216', 'professorvinicius@gmail.com');

-- Inserindo dados na tabela produto
INSERT INTO produto (nome, categoria, preco, ativo) VALUES
('Gelo de Sabor Unidade', 'Gelo de Sabor', 2.00, 1),
('Gelo de Sabor 50 Unidades', 'Gelol de Sabor', 100.00, 1),
('Açaí no Copo 300 ml', 'Açaí', 15.00, 1),
('Barca de Açaí', 'Açaí', 40.00, 1),
('Sorvete Expresso', 'Sorvete', 5.00, 1),
('Embalagem de Gelo', 'Embalagem', 0.50, 1),
('Casquinha de Sorvete', 'Casquinha', 2.00, 1),
('Gelo tradicional 1KG', 'Gelo', 13.00, 1);

-- Inserindo dados na tabela venda
INSERT INTO venda (id_cliente, total) VALUES
(1, 60.00),
(2, 25.00),
(3, 13.00);

-- Inserindo dados na tabela item_venda
INSERT INTO item_venda (id_venda, id_produto, quantidade, preco_unitario, subtotal) VALUES
(1, 4, 1, 40.00, 40.00),  -- Letícia compra Barca de Açaí
(1, 1, 10, 2.00, 20.00),  -- Letícia compra 10 Gelo de Sabor Unidade

(2, 3, 1, 15.00, 15.00),  -- Amanda compra Açaí Copo 300 ml
(2, 8, 1, 13.00, 13.00),  -- Amanda compra Gelo 1KG
(2, 6, 1, 0.50, 0.50),    -- Amanda compra embalagem (subtotal ignorado)

(3, 5, 2, 5.00, 10.00),   -- Vinicius compra 2 sorvetes expresso
(3, 7, 1, 2.00, 2.00);    -- Vinicius compra uma casquinha




SELECT 
    v.id_venda AS "Código da Venda",
    c.nome AS "Cliente",
    p.nome AS "Produto",
    iv.quantidade AS "Qtd",
    iv.preco_unitario AS "Preço Unitário",
    iv.subtotal AS "Subtotal",
    v.total AS "Total da Venda",
    v.data_hora AS "Data/Hora"
FROM item_venda iv
JOIN venda v ON iv.id_venda = v.id_venda
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN produto p ON iv.id_produto = p.id_produto
ORDER BY v.id_venda;

CREATE VIEW relatorio_vendas AS
SELECT 
    v.id_venda AS "Código da Venda",
    c.nome AS "Cliente",
    p.nome AS "Produto",
    iv.quantidade AS "Qtd",
    iv.preco_unitario AS "Preço Unitário",
    iv.subtotal AS "Subtotal",
    v.total AS "Total da Venda",
    v.data_hora AS "Data/Hora"
FROM item_venda iv
JOIN venda v ON iv.id_venda = v.id_venda
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN produto p ON iv.id_produto = p.id_produto
ORDER BY v.id_venda;
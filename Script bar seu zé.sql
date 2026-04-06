USE DB_T2_VITOR_PIRES

CREATE TABLE PRODUTO 
( 
 ID_PRODUTO INT PRIMARY KEY AUTO_INCREMENT,  
 NOME VARCHAR(100),
 PRECO_CUSTO DECIMAL(10, 2),
 PRECO_VENDA DECIMAL(10, 2),
 ID_FORNECEDOR INT
);

CREATE TABLE CLIENTE 
( 
 ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,  
 NOME VARCHAR(100)
);

CREATE TABLE FUNCIONARIO 
( 
 ID_FUNCIONARIO INT PRIMARY KEY AUTO_INCREMENT,  
 NOME VARCHAR(100), 
 DATA_ADMISSAO DATE,
 CARGO VARCHAR(50),
 SALARIO DECIMAL(10,2)
);

CREATE TABLE FORNECEDOR 
( 
 ID_FORNECEDOR INT PRIMARY KEY AUTO_INCREMENT,  
 NOME VARCHAR(100)
);

CREATE TABLE VENDAS 
 ID_VENDA INT PRIMARY KEY AUTO_INCREMENT,
 DATA DATE,
 ID_PRODUTO INT,
 QUANTIDADE INT,
 PRECO_UNITARIO DECIMAL(10,2),
 CUSTO_UNITARIO DECIMAL(10,2),
 VALOR_TOTAL DECIMAL(10,2),
 ID_FUNCIONARIO INT,  
 ID_CLIENTE INT,
 FIADO INT
 );

CREATE TABLE ESTOQUE
( 
 ID_PRODUTO INT PRIMARY KEY AUTO_INCREMENT,  
 QUANTIDADE INT,
 ID_PRODUTO INT
 DATA_ATUALIZACAO DATE
);

CREATE TABLE FLUXO_CAIXA
( 
 ID_FLUXO INT PRIMARY KEY AUTO_INCREMENT,
 DATA DATE,
 TIPO VARCHAR(100), 
 VALOR DECIMAL(10,2),
 DESCRICAO VARCHAR(100),
 ID_VENDA INT
);


INSERT INTO FUNCIONARIO (NOME, SALARIO, DATA_ADMISSAO, CARGO) VALUES
('Apolo God', 1900.03, '2022-01-01', 'Atendente'),
('Ártemis Sister', 2300.00, '2024-01-01', 'Gerente'),
('Adônis Grega', 1834.45, '2025-01-01', 'Atendente'),
('SUBTOTAL', 6034.48, NULL, NULL);


INSERT INTO CLIENTE (NOME) VALUES
('Zé da Esquina'),
('João do Pulo'),
('Tião'),
('Sr. Wilson'),
('Roberto'),
('Chico Mineiro'),
('Dona Maria');

INSERT INTO FORNECEDOR (NOME) VALUES
('Distribuidora Cevada Pura'),
('Alambique Velho Oeste'),
('Granja Renascer'),
('Frigorífico Boi Gordo'),
('Salgadaria Popular'),
('Hortifruti do Campo'),
('Snacks do Cerrado'),
('Laticínios da Serra'),
('Pescados da Costa'),
('Tabacaria Ouro Negro');

INSERT INTO PRODUTO (NOME, PRECO_VENDA, PRECO_CUSTO, ID_FORNECEDOR) VALUES
('Cerveja', 10.00, 6.50, 1),
('Cachaça', 3.00, 1.20, 2),
('Ovo Rosa', 2.50, 1.10, 3),
('Espetinho', 8.00, 3.80, 4),
('Bolinho de Carne', 6.00, 2.50, 5),
('Coxinha', 6.00, 2.50, 5),
('Risoles', 6.00, 2.50, 5),
('Quibe', 6.00, 2.50, 5),
('Empada', 5.00, 2.10, 5),
('Torresmo', 5.00, 1.80, 4),
('Batata Frita', 20.00, 8.50, 6),
('Amendoim', 3.00, 1.10, 7),
('Ovo de Codorna', 1.00, 0.40, 3),
('Azeitona', 10.00, 4.20, 6),
('Queijo Coalho', 7.00, 3.40, 8),
('Linguiça Calabresa', 25.00, 11.00, 4),
('Pão com Mortadela', 8.00, 3.20, 5),
('Sardinha', 4.00, 1.70, 9),
('Caldo de Mocotó', 12.00, 5.50, 4),
('Dobradinha', 15.00, 6.80, 4),
('Caldinho de Feijão', 10.00, 4.10, 6),
('Refrigerante', 5.00, 2.80, 1),
('Água Tônica', 6.00, 3.10, 1),
('Cigarro', 1.00, 0.65, 10),
('Isqueiro', 6.00, 2.90, 10),
('Fósforo', 1.00, 0.45, 10),
('Paçoca', 1.50, 0.60, 7),
('Chiclete', 0.50, 0.15, 7),
('Conhaque', 7.00, 3.90, 2),
('Café', 2.00, 0.80, 6);

INSERT INTO ESTOQUE (ID_PRODUTO, QUANTIDADE, DATA_ATUALIZACAO) VALUES
(1, 100, '2026-03-01'),
(2, 100, '2026-03-01'),
(3, 100, '2026-03-01'),
(4, 100, '2026-03-01'),
(5, 100, '2026-03-01'),
(6, 100, '2026-03-01'),
(7, 100, '2026-03-01'),
(8, 100, '2026-03-01'),
(9, 100, '2026-03-01'),
(10, 100, '2026-03-01'),
(11, 100, '2026-03-01'),
(12, 100, '2026-03-01'),
(13, 100, '2026-03-01'),
(14, 100, '2026-03-01'),
(15, 100, '2026-03-01'),
(16, 100, '2026-03-01'),
(17, 100, '2026-03-01'),
(18, 100, '2026-03-01'),
(19, 100, '2026-03-01'),
(20, 100, '2026-03-01'),
(21, 100, '2026-03-01'),
(22, 100, '2026-03-01'),
(23, 100, '2026-03-01'),
(24, 100, '2026-03-01'),
(25, 100, '2026-03-01'),
(26, 100, '2026-03-01'),
(27, 100, '2026-03-01'),
(28, 100, '2026-03-01'),
(29, 100, '2026-03-01'),
(30, 100, '2026-03-01');


ALTER TABLE ESTOQUE RENAME COLUMN ID_ESTOQUE TO ID_PRODUTO;


INSERT INTO VENDAS (DATA, ID_PRODUTO, QUANTIDADE, PRECO_UNITARIO, CUSTO_UNITARIO, VALOR_TOTAL, ID_FUNCIONARIO, ID_CLIENTE, FIADO) VALUES
('2026-03-06', 14, 6, 10.00, 4.20, 60.00, 3, NULL, 0),
('2026-03-06', 15, 10, 7.00, 3.40, 70.00, 3, NULL, 0),
('2026-03-06', 16, 5, 25.00, 11.00, 125.00, 3, 3, 0),
('2026-03-07', 17, 18, 8.00, 3.20, 144.00, 3, NULL, 0),
('2026-03-07', 18, 15, 4.00, 1.70, 60.00, 2, 2, 0),
('2026-03-07', 19, 10, 12.00, 5.50, 120.00, 3, NULL, 0),
('2026-03-08', 20, 8, 15.00, 6.80, 120.00, 3, 1, 0),
('2026-03-08', 21, 15, 10.00, 4.10, 150.00, 3, NULL, 0),
('2026-03-08', 22, 30, 5.00, 2.80, 150.00, 3, 4, 0),
('2026-03-09', 23, 15, 6.00, 3.10, 90.00, 2, NULL, 0),
('2026-03-09', 25, 5, 6.00, 2.90, 30.00, 3, 5, 0),
('2026-03-09', 26, 15, 1.00, 0.45, 15.00, 3, NULL, 0),
('2026-03-10', 27, 20, 1.50, 0.60, 30.00, 3, 6, 0),
('2026-03-10', 28, 80, 0.50, 0.15, 40.00, 2, NULL, 0),
('2026-03-10', 29, 12, 7.00, 3.90, 84.00, 2, 7, 0),
('2026-03-11', 1, 45, 10.00, 6.50, 450.00, 3, NULL, 0),
('2026-03-11', 6, 28, 6.00, 2.50, 168.00, 3, 3, 0),
('2026-03-11', 2, 55, 3.00, 1.20, 165.00, 2, NULL, 0),
('2026-03-12', 3, 22, 2.50, 1.10, 55.00, 2, 2, 0),
('2026-03-12', 4, 20, 8.00, 3.80, 160.00, 3, NULL, 0),
('2026-03-12', 5, 15, 6.00, 2.50, 90.00, 3, 1, 0),
('2026-03-13', 7, 12, 6.00, 2.50, 72.00, 3, NULL, 0),
('2026-03-13', 8, 15, 6.00, 2.50, 90.00, 3, 4, 0),
('2026-03-13', 9, 18, 5.00, 2.10, 90.00, 3, NULL, 0),
('2026-03-14', 10, 30, 5.00, 1.80, 150.00, 2, 5, 0),
('2026-03-14', 11, 10, 20.00, 8.50, 200.00, 3, NULL, 0),
('2026-03-14', 12, 25, 3.00, 1.10, 75.00, 3, 6, 0),
('2026-03-15', 13, 45, 1.00, 0.40, 45.00, 2, NULL, 0),
('2026-03-15', 14, 12, 10.00, 4.20, 120.00, 3, 7, 0),
('2026-03-15', 15, 15, 7.00, 3.40, 105.00, 3, NULL, 0),
('2026-03-16', 16, 8, 25.00, 11.00, 200.00, 3, 3, 0),
('2026-03-16', 17, 20, 8.00, 3.20, 160.00, 3, NULL, 0),
('2026-03-16', 18, 22, 4.00, 1.70, 88.00, 2, 2, 0),
('2026-03-17', 19, 15, 12.00, 5.50, 180.00, 3, NULL, 0),
('2026-03-17', 20, 10, 15.00, 6.80, 150.00, 3, 1, 0),
('2026-03-17', 21, 20, 10.00, 4.10, 200.00, 3, NULL, 0),
('2026-03-18', 22, 35, 5.00, 2.80, 175.00, 3, 4, 0),
('2026-03-18', 23, 18, 6.00, 3.10, 108.00, 2, NULL, 0),
('2026-03-18', 24, 75, 1.00, 0.65, 75.00, 2, 5, 0),
('2026-03-19', 25, 8, 6.00, 2.90, 48.00, 3, NULL, 0),
('2026-03-19', 26, 20, 1.00, 0.45, 20.00, 3, 6, 0),
('2026-03-19', 27, 30, 1.50, 0.60, 45.00, 3, NULL, 0),
('2026-03-20', 28, 110, 0.50, 0.15, 55.00, 2, 7, 0),
('2026-03-20', 29, 15, 7.00, 3.90, 105.00, 2, NULL, 0),
('2026-03-20', 30, 40, 2.00, 0.80, 80.00, 2, 3, 0),
('2026-03-21', 1, 55, 10.00, 6.50, 550.00, 3, NULL, 0),
('2026-03-21', 6, 32, 6.00, 2.50, 192.00, 3, 2, 0),
('2026-03-21', 2, 65, 3.00, 1.20, 195.00, 2, NULL, 0),
('2026-03-22', 3, 28, 2.50, 1.10, 70.00, 2, 1, 0),
('2026-03-22', 4, 22, 8.00, 3.80, 176.00, 3, NULL, 0),
('2026-03-22', 5, 18, 6.00, 2.50, 108.00, 3, 4, 0),
('2026-03-23', 7, 15, 6.00, 2.50, 90.00, 3, NULL, 0),
('2026-03-23', 8, 18, 6.00, 2.50, 108.00, 3, 5, 0),
('2026-03-23', 9, 25, 5.00, 2.10, 125.00, 3, NULL, 0),
('2026-03-24', 10, 35, 5.00, 1.80, 175.00, 2, 6, 0),
('2026-03-24', 11, 12, 20.00, 8.50, 240.00, 3, NULL, 0),
('2026-03-24', 12, 30, 3.00, 1.10, 90.00, 3, 7, 0),
('2026-03-25', 13, 55, 1.00, 0.40, 55.00, 2, NULL, 0),
('2026-03-25', 14, 15, 10.00, 4.20, 150.00, 3, 3, 0),
('2026-03-25', 15, 18, 7.00, 3.40, 126.00, 3, NULL, 0),
('2026-03-26', 16, 10, 25.00, 11.00, 250.00, 3, 2, 0),
('2026-03-26', 17, 25, 8.00, 3.20, 200.00, 3, NULL, 0),
('2026-03-26', 18, 30, 4.00, 1.70, 120.00, 2, 1, 0),
('2026-03-27', 19, 18, 12.00, 5.50, 216.00, 3, NULL, 0),
('2026-03-27', 20, 12, 15.00, 6.80, 180.00, 3, 4, 0),
('2026-03-27', 21, 25, 10.00, 4.10, 250.00, 3, NULL, 0),
('2026-03-28', 22, 40, 5.00, 2.80, 200.00, 3, 5, 0),
('2026-03-28', 23, 20, 6.00, 3.10, 120.00, 2, NULL, 0),
('2026-03-28', 24, 80, 1.00, 0.65, 80.00, 2, 6, 0),
('2026-03-29', 25, 10, 6.00, 2.90, 60.00, 3, NULL, 0),
('2026-03-29', 26, 25, 1.00, 0.45, 25.00, 3, 7, 0),
('2026-03-29', 27, 35, 1.50, 0.60, 52.50, 3, NULL, 0),
('2026-03-30', 28, 120, 0.50, 0.15, 60.00, 2, 3, 0),
('2026-03-30', 29, 18, 7.00, 3.90, 126.00, 2, NULL, 0),
('2026-03-30', 30, 45, 2.00, 0.80, 90.00, 2, 2, 0),
('2026-03-31', 1, 60, 10.00, 6.50, 600.00, 3, NULL, 0),
('2026-03-31', 6, 35, 6.00, 2.50, 210.00, 3, 1, 0),
('2026-03-31', 2, 70, 3.00, 1.20, 210.00, 2, NULL, 0),
('2026-01-05', 2, 10, 3.00, 1.20, 30.00, 2, 1, 1),
('2026-01-07', 1, 6, 10.00, 6.50, 60.00, 3, 2, 1),
('2026-01-08', 24, 10, 1.00, 0.65, 10.00, 3, 3, 1),
('2026-01-10', 10, 5, 5.00, 1.80, 25.00, 2, 4, 1),
('2026-01-12', 29, 4, 7.00, 3.90, 28.00, 2, 5, 1),
('2026-01-15', 17, 4, 8.00, 3.20, 32.00, 3, 6, 1),
('2026-01-18', 19, 3, 12.00, 5.50, 36.00, 3, 7, 1),
('2026-01-20', 2, 8, 3.00, 1.20, 24.00, 2, 1, 1),
('2026-01-22', 1, 10, 10.00, 6.50, 100.00, 3, 2, 1),
('2026-01-25', 4, 6, 8.00, 3.80, 48.00, 3, 3, 1),
('2026-01-28', 16, 2, 25.00, 11.00, 50.00, 3, 5, 1),
('2026-01-30', 30, 10, 2.00, 0.80, 20.00, 2, 6, 1),
('2026-02-02', 6, 6, 6.00, 2.50, 36.00, 3, 1, 1),
('2026-02-04', 1, 8, 10.00, 6.50, 80.00, 3, 4, 1),
('2026-02-05', 24, 15, 1.00, 0.65, 15.00, 2, 3, 1),
('2026-02-07', 2, 12, 3.00, 1.20, 36.00, 2, 2, 1),
('2026-02-10', 20, 3, 15.00, 6.80, 45.00, 3, 5, 1),
('2026-02-12', 5, 5, 6.00, 2.50, 30.00, 3, 7, 1),
('2026-02-15', 15, 4, 7.00, 3.40, 28.00, 3, 6, 1),
('2026-02-18', 21, 5, 10.00, 4.10, 50.00, 3, 1, 1),
('2026-02-20', 1, 12, 10.00, 6.50, 120.00, 3, 4, 1),
('2026-02-22', 29, 6, 7.00, 3.90, 42.00, 2, 5, 1),
('2026-02-24', 3, 10, 2.50, 1.10, 25.00, 2, 3, 1),
('2026-02-26', 4, 8, 8.00, 3.80, 64.00, 3, 2, 1),
('2026-02-28', 18, 10, 4.00, 1.70, 40.00, 2, 6, 1),
('2026-03-02', 1, 5, 10.00, 6.50, 50.00, 3, 7, 1),
('2026-03-04', 24, 20, 1.00, 0.65, 20.00, 2, 1, 1),
('2026-03-05', 2, 10, 3.00, 1.20, 30.00, 2, 3, 1),
('2026-03-07', 10, 6, 5.00, 1.80, 30.00, 2, 4, 1),
('2026-03-09', 17, 5, 8.00, 3.20, 40.00, 3, 5, 1),
('2026-03-11', 19, 4, 12.00, 5.50, 48.00, 3, 2, 1),
('2026-03-13', 6, 8, 6.00, 2.50, 48.00, 3, 6, 1),
('2026-03-15', 1, 10, 10.00, 6.50, 100.00, 3, 1, 1),
('2026-03-17', 16, 3, 25.00, 11.00, 75.00, 3, 7, 1),
('2026-03-19', 12, 10, 3.00, 1.10, 30.00, 3, 3, 1),
('2026-03-21', 2, 15, 3.00, 1.20, 45.00, 2, 4, 1),
('2026-03-22', 29, 5, 7.00, 3.90, 35.00, 2, 2, 1),
('2026-03-24', 8, 6, 6.00, 2.50, 36.00, 3, 5, 1),
('2026-03-25', 11, 2, 20.00, 8.50, 40.00, 3, 6, 1),
('2026-03-26', 30, 12, 2.00, 0.80, 24.00, 2, 1, 1),
('2026-03-27', 24, 12, 1.00, 0.65, 12.00, 2, 7, 1),
('2026-03-28', 1, 8, 10.00, 6.50, 80.00, 3, 3, 1),
('2026-03-29', 27, 15, 1.50, 0.60, 22.50, 3, 4, 1),
('2026-03-29', 28, 50, 0.50, 0.15, 25.00, 2, 5, 1),
('2026-03-30', 2, 20, 3.00, 1.20, 60.00, 2, 2, 1),
('2026-03-30', 9, 10, 5.00, 2.10, 50.00, 3, 6, 1),
('2026-03-31', 21, 6, 10.00, 4.10, 60.00, 3, 1, 1),
('2026-03-31', 1, 12, 10.00, 6.50, 120.00, 3, 4, 1),
('2026-03-31', 25, 2, 6.00, 2.90, 12.00, 3, 3, 1),
('2026-03-31', 29, 4, 7.00, 3.90, 28.00, 2, 5, 1);

INSERT INTO FLUXO_CAIXA (DATA, TIPO, VALOR, DESCRICAO, ID_VENDAS)
VALUES
('2026-03-06', 'ENTRADA', 60.00, 'Venda de Azeitona', 1),
('2026-03-06', 'ENTRADA', 70.00, 'Venda de Queijo Coalho', 2),
('2026-03-06', 'ENTRADA', 125.00, 'Venda de Linguiça Calabresa', 3),
('2026-03-07', 'ENTRADA', 144.00, 'Venda de Pão com Mortadela', 4),
('2026-03-07', 'ENTRADA', 60.00, 'Venda de Sardinha', 5),
('2026-03-07', 'ENTRADA', 120.00, 'Venda de Caldo de Mocotó', 6),
('2026-03-08', 'ENTRADA', 120.00, 'Venda de Dobradinha', 7),
('2026-03-08', 'ENTRADA', 150.00, 'Venda de Caldinho de Feijão', 8),
('2026-03-08', 'ENTRADA', 150.00, 'Venda de Refrigerante', 9),
('2026-03-09', 'ENTRADA', 90.00, 'Venda de Água Tônica', 10),
('2026-03-09', 'ENTRADA', 30.00, 'Venda de Isqueiro', 11),
('2026-03-09', 'ENTRADA', 15.00, 'Venda de Fósforo', 12),
('2026-03-10', 'ENTRADA', 30.00, 'Venda de Paçoca', 13),
('2026-03-10', 'ENTRADA', 40.00, 'Venda de Chiclete', 14),
('2026-03-10', 'ENTRADA', 84.00, 'Venda de Conhaque', 15),
('2026-03-11', 'ENTRADA', 450.00, 'Venda de Cerveja', 16),
('2026-03-11', 'ENTRADA', 168.00, 'Venda de Coxinha', 17),
('2026-03-11', 'ENTRADA', 165.00, 'Venda de Cachaça', 18),
('2026-03-12', 'ENTRADA', 55.00, 'Venda de Ovo Rosa', 19),
('2026-03-12', 'ENTRADA', 160.00, 'Venda de Espetinho', 20),
('2026-03-12', 'ENTRADA', 90.00, 'Venda de Bolinho de Carne', 21),
('2026-03-13', 'ENTRADA', 72.00, 'Venda de Risoles', 22),
('2026-03-13', 'ENTRADA', 90.00, 'Venda de Quibe', 23),
('2026-03-13', 'ENTRADA', 90.00, 'Venda de Empada', 24),
('2026-03-14', 'ENTRADA', 150.00, 'Venda de Torresmo', 25),
('2026-03-14', 'ENTRADA', 200.00, 'Venda de Batata Frita', 26),
('2026-03-14', 'ENTRADA', 75.00, 'Venda de Amendoim', 27),
('2026-03-15', 'ENTRADA', 45.00, 'Venda de Ovo de Codorna', 28),
('2026-03-15', 'ENTRADA', 120.00, 'Venda de Azeitona', 29),
('2026-03-15', 'ENTRADA', 105.00, 'Venda de Queijo Coalho', 30),
('2026-03-16', 'ENTRADA', 200.00, 'Venda de Linguiça Calabresa', 31),
('2026-03-16', 'ENTRADA', 160.00, 'Venda de Pão com Mortadela', 32),
('2026-03-16', 'ENTRADA', 88.00, 'Venda de Sardinha', 33),
('2026-03-17', 'ENTRADA', 180.00, 'Venda de Caldo de Mocotó', 34),
('2026-03-17', 'ENTRADA', 150.00, 'Venda de Dobradinha', 35),
('2026-03-17', 'ENTRADA', 200.00, 'Venda de Caldinho de Feijão', 36),
('2026-03-18', 'ENTRADA', 175.00, 'Venda de Refrigerante', 37),
('2026-03-18', 'ENTRADA', 108.00, 'Venda de Água Tônica', 38),
('2026-03-18', 'ENTRADA', 75.00, 'Venda de Cigarro', 39),
('2026-03-19', 'ENTRADA', 48.00, 'Venda de Isqueiro', 40),
('2026-03-19', 'ENTRADA', 20.00, 'Venda de Fósforo', 41),
('2026-03-19', 'ENTRADA', 45.00, 'Venda de Paçoca', 42),
('2026-03-20', 'ENTRADA', 55.00, 'Venda de Chiclete', 43),
('2026-03-20', 'ENTRADA', 105.00, 'Venda de Conhaque', 44),
('2026-03-20', 'ENTRADA', 80.00, 'Venda de Café', 45),
('2026-03-21', 'ENTRADA', 550.00, 'Venda de Cerveja', 46),
('2026-03-21', 'ENTRADA', 192.00, 'Venda de Coxinha', 47),
('2026-03-21', 'ENTRADA', 195.00, 'Venda de Cachaça', 48),
('2026-03-22', 'ENTRADA', 70.00, 'Venda de Ovo Rosa', 49),
('2026-03-22', 'ENTRADA', 176.00, 'Venda de Espetinho', 50),
('2026-03-22', 'ENTRADA', 108.00, 'Venda de Bolinho de Carne', 51),
('2026-03-23', 'ENTRADA', 90.00, 'Venda de Risoles', 52),
('2026-03-23', 'ENTRADA', 108.00, 'Venda de Quibe', 53),
('2026-03-23', 'ENTRADA', 125.00, 'Venda de Empada', 54),
('2026-03-24', 'ENTRADA', 175.00, 'Venda de Torresmo', 55),
('2026-03-24', 'ENTRADA', 240.00, 'Venda de Batata Frita', 56),
('2026-03-24', 'ENTRADA', 90.00, 'Venda de Amendoim', 57),
('2026-03-25', 'ENTRADA', 55.00, 'Venda de Ovo de Codorna', 58),
('2026-03-25', 'ENTRADA', 150.00, 'Venda de Azeitona', 59),
('2026-03-25', 'ENTRADA', 126.00, 'Venda de Queijo Coalho', 60),
('2026-03-26', 'ENTRADA', 250.00, 'Venda de Linguiça Calabresa', 61),
('2026-03-26', 'ENTRADA', 200.00, 'Venda de Pão com Mortadela', 62),
('2026-03-26', 'ENTRADA', 120.00, 'Venda de Sardinha', 63),
('2026-03-27', 'ENTRADA', 216.00, 'Venda de Caldo de Mocotó', 64),
('2026-03-27', 'ENTRADA', 180.00, 'Venda de Dobradinha', 65),
('2026-03-27', 'ENTRADA', 250.00, 'Venda de Caldinho de Feijão', 66),
('2026-03-28', 'ENTRADA', 200.00, 'Venda de Refrigerante', 67),
('2026-03-28', 'ENTRADA', 120.00, 'Venda de Água Tônica', 68),
('2026-03-28', 'ENTRADA', 80.00, 'Venda de Cigarro', 69),
('2026-03-29', 'ENTRADA', 60.00, 'Venda de Isqueiro', 70),
('2026-03-29', 'ENTRADA', 25.00, 'Venda de Fósforo', 71),
('2026-03-29', 'ENTRADA', 52.50, 'Venda de Paçoca', 72),
('2026-03-30', 'ENTRADA', 60.00, 'Venda de Chiclete', 73),
('2026-03-30', 'ENTRADA', 126.00, 'Venda de Conhaque', 74),
('2026-03-30', 'ENTRADA', 90.00, 'Venda de Café', 75),
('2026-03-31', 'ENTRADA', 600.00, 'Venda de Cerveja', 76),
('2026-03-31', 'ENTRADA', 210.00, 'Venda de Coxinha', 77),
('2026-03-31', 'ENTRADA', 210.00, 'Venda de Cachaça', 78),
('2026-03-31', 'SAIDA', 1900.03, 'Salário Apolo God', NULL),
('2026-03-31', 'SAIDA', 2300.00, 'Salário Ártemis Sister', NULL),
('2026-03-31', 'SAIDA', 1834.45, 'Salário Adônis Grega', NULL),
('2026-01-05', 'ENTRADA', 30.00, 'Venda fiada de Cachaça', 79),
('2026-01-07', 'ENTRADA', 60.00, 'Venda fiada de Cerveja', 80),
('2026-01-08', 'ENTRADA', 10.00, 'Venda fiada de Cigarro', 81),
('2026-01-10', 'ENTRADA', 25.00, 'Venda fiada de Torresmo', 82),
('2026-01-12', 'ENTRADA', 28.00, 'Venda fiada de Conhaque', 83),
('2026-01-15', 'ENTRADA', 32.00, 'Venda fiada de Pão com Mortadela', 84),
('2026-01-18', 'ENTRADA', 36.00, 'Venda fiada de Caldo de Mocotó', 85),
('2026-01-20', 'ENTRADA', 24.00, 'Venda fiada de Cachaça', 86),
('2026-01-22', 'ENTRADA', 100.00, 'Venda fiada de Cerveja', 87),
('2026-01-25', 'ENTRADA', 48.00, 'Venda fiada de Espetinho', 88),
('2026-01-28', 'ENTRADA', 50.00, 'Venda fiada de Linguiça Calabresa', 89),
('2026-01-30', 'ENTRADA', 20.00, 'Venda fiada de Café', 90),
('2026-01-31', 'SAIDA', 1900.03, 'Salário Apolo God', NULL),
('2026-01-31', 'SAIDA', 2300.00, 'Salário Ártemis Sister', NULL),
('2026-01-31', 'SAIDA', 1834.45, 'Salário Adônis Grega', NULL),
('2026-02-02', 'ENTRADA', 36.00, 'Venda fiada de Coxinha', 91),
('2026-02-04', 'ENTRADA', 80.00, 'Venda fiada de Cerveja', 92),
('2026-02-05', 'ENTRADA', 15.00, 'Venda fiada de Cigarro', 93),
('2026-02-07', 'ENTRADA', 36.00, 'Venda fiada de Cachaça', 94),
('2026-02-10', 'ENTRADA', 45.00, 'Venda fiada de Dobradinha', 95),
('2026-02-12', 'ENTRADA', 30.00, 'Venda fiada de Bolinho de Carne', 96),
('2026-02-15', 'ENTRADA', 28.00, 'Venda fiada de Queijo Coalho', 97),
('2026-02-18', 'ENTRADA', 50.00, 'Venda fiada de Caldinho de Feijão', 98),
('2026-02-20', 'ENTRADA', 120.00, 'Venda fiada de Cerveja', 99),
('2026-02-22', 'ENTRADA', 42.00, 'Venda fiada de Conhaque', 100),
('2026-02-24', 'ENTRADA', 25.00, 'Venda fiada de Ovo Rosa', 101),
('2026-02-26', 'ENTRADA', 64.00, 'Venda fiada de Espetinho', 102),
('2026-02-28', 'ENTRADA', 40.00, 'Venda fiada de Sardinha', 103),
('2026-02-28', 'SAIDA', 1900.03, 'Salário Apolo God', NULL),
('2026-02-28', 'SAIDA', 2300.00, 'Salário Ártemis Sister', NULL),
('2026-02-28', 'SAIDA', 1834.45, 'Salário Adônis Grega', NULL),
('2026-03-02', 'ENTRADA', 50.00, 'Venda fiada de Cerveja', 104),
('2026-03-04', 'ENTRADA', 20.00, 'Venda fiada de Cigarro', 105),
('2026-03-05', 'ENTRADA', 30.00, 'Venda fiada de Cachaça', 106),
('2026-03-07', 'ENTRADA', 30.00, 'Venda fiada de Torresmo', 107),
('2026-03-09', 'ENTRADA', 40.00, 'Venda fiada de Pão com Mortadela', 108),
('2026-03-11', 'ENTRADA', 48.00, 'Venda fiada de Caldo de Mocotó', 109),
('2026-03-13', 'ENTRADA', 48.00, 'Venda fiada de Coxinha', 110),
('2026-03-15', 'ENTRADA', 100.00, 'Venda fiada de Cerveja', 111),
('2026-03-17', 'ENTRADA', 75.00, 'Venda fiada de Linguiça Calabresa', 112),
('2026-03-19', 'ENTRADA', 30.00, 'Venda fiada de Amendoim', 113),
('2026-03-21', 'ENTRADA', 45.00, 'Venda fiada de Cachaça', 114),
('2026-03-22', 'ENTRADA', 35.00, 'Venda fiada de Conhaque', 115),
('2026-03-24', 'ENTRADA', 36.00, 'Venda fiada de Quibe', 116),
('2026-03-25', 'ENTRADA', 40.00, 'Venda fiada de Batata Frita', 117),
('2026-03-26', 'ENTRADA', 24.00, 'Venda fiada de Café', 118),
('2026-03-27', 'ENTRADA', 12.00, 'Venda fiada de Cigarro', 119),
('2026-03-28', 'ENTRADA', 80.00, 'Venda fiada de Cerveja', 120),
('2026-03-29', 'ENTRADA', 22.50, 'Venda fiada de Paçoca', 121),
('2026-03-29', 'ENTRADA', 25.00, 'Venda fiada de Chiclete', 122),
('2026-03-30', 'ENTRADA', 60.00, 'Venda fiada de Cachaça', 123),
('2026-03-30', 'ENTRADA', 50.00, 'Venda fiada de Empada', 124),
('2026-03-31', 'ENTRADA', 60.00, 'Venda fiada de Caldinho de Feijão', 125),
('2026-03-31', 'ENTRADA', 120.00, 'Venda fiada de Cerveja', 126),
('2026-03-31', 'ENTRADA', 12.00, 'Venda fiada de Isqueiro', 127),
('2026-03-31', 'ENTRADA', 28.00, 'Venda fiada de Conhaque', 128);


-- Faturamento Março

SELECT * FROM FLUXO_CAIXA
WHERE DATA >= '2026-03-01'
AND DATA <= '2026-03-31'
AND DESCRICAO LIKE 'Venda de%'

-- OU USANDO O SUM

SELECT SUM(VALOR)
FROM FLUXO_CAIXA
WHERE DATA >= '2026-03-01' AND DATA <= '2026-03-31'
AND DESCRICAO LIKE 'Venda de%'


-- LUCRO DE MARÇO

SELECT SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO)
FROM VENDAS
WHERE DATA >= '2026-03-01' AND DATA <= '2026-03-31'

-- LUCRO ULTIMOS 3 MESES

SELECT SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO)
FROM VENDAS
WHERE DATA >= '2026-01-01' AND DATA <= '2026-03-31'



-- PRODUTO MAIS VENDIDO

SELECT ID_PRODUTO, SUM(QUANTIDADE) AS TOTAL
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY TOTAL ASC
LIMIT 1;


-- PRODUTO MENOS VENDIDO

SELECT ID_PRODUTO, SUM(QUANTIDADE) AS TOTAL
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY TOTAL DESC
LIMIT 1;

-- FUNCIONARIO QUE MAIS VENDEU E MENOS VENDEU

SELECT ID_FUNCIONARIO, ID_VENDA
FROM VENDAS
ORDER BY ID_FUNCIONARIO;


-- PRODUTO COM MAIOR LUCRO - PRODUTO ID = 1 - CERVEJA

SELECT ID_PRODUTO, SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO) AS LUCRO
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY LUCRO DESC
LIMIT 1;

-- PRODUTO COM MENOR LUCRO - PRODUTO ID = 26 - FÓSFORO

SELECT ID_PRODUTO, SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO) AS LUCRO
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY LUCRO ASC
LIMIT 1;

-- TOTAL DE VENDAS POR DIA

SELECT DATA, SUM(VALOR_TOTAL) AS VENDAS_POR_DIA
FROM VENDAS
GROUP BY DATA
ORDER BY DATA;



-- CLIENTE QUE MAIS COMPROU = CLIENTE ID = 3 E ID = 1

SELECT ID_CLIENTE, ID_VENDA
FROM VENDAS
ORDER BY ID_CLIENTE;

-- QUERY PRA AJUDAR SEU ZÉ

SELECT ID_PRODUTO, SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO) AS LUCRO
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY LUCRO DESC
LIMIT 5;

SELECT ID_PRODUTO, SUM(VALOR_TOTAL) - SUM(QUANTIDADE * CUSTO_UNITARIO) AS LUCRO
FROM VENDAS
GROUP BY ID_PRODUTO
ORDER BY LUCRO ASC
LIMIT 5;


-- CLIENTE QUE MAIS COMPROU FIADO = CLIENTE ID = 8

SELECT ID_CLIENTE, ID_VENDA
FROM VENDAS
WHERE FIADO = 1
ORDER BY ID_CLIENTE;


-- PRODUTO QUE MAIS LEVAM SEM PAGAR NA HORA = PRODUTO ID = 1 - CERVEJA

SELECT ID_CLIENTE, ID_PRODUTO
FROM VENDAS
WHERE FIADO = 1
ORDER BY ID_PRODUTO;


--  QUANTO O BAR DEIXOU DE ARRECADAR EM CADA MÊS

-- JANEIRO

SELECT SUM(VALOR_TOTAL) FROM VENDAS
WHERE DATA >= '2026-01-01' AND DATA <= '2026-01-31'
AND FIADO = 1

-- FEVEREIRO

SELECT SUM(VALOR_TOTAL) FROM VENDAS
WHERE DATA >= '2026-02-01' AND DATA <= '2026-02-28'
AND FIADO = 1

-- MARÇO

SELECT SUM(VALOR_TOTAL) FROM VENDAS
WHERE DATA >= '2026-03-01' AND DATA <= '2026-03-31'
AND FIADO = 1





 













-- CUSTO DE RESTOQUE COMPLETO - 1 UNIDADE

SELECT SUM(PRECO_CUSTO) AS TOTAL
FROM PRODUTO
























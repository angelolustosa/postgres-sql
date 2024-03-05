CREATE TABLE carros (
	--SERIAL: auto increment, atualiza o valor do id automatico
	id SERIAL PRIMARY KEY, 
	--NOT NULL: a coluna não pode ser vazia
	nome VARCHAR(255) NOT NULL, 
	modelo VARCHAR(255) NOT NULL, 
	ano INTEGER NOT NULL, --MIN 1800 MAX 2024
	preco DECIMAL(10, 2) NOT NULL,
	marca VARCHAR(255) NOT NULL,
	acessorios VARCHAR(255), --não tem NOT NULL pois não é obrigatório
	fabricacao BOOLEAN DEFAULT TRUE
); 


--Excluir tabela
DROP TABLE IF EXISTS carros;

--Inserir dados na tabela
INSERT INTO carros (nome, modelo, ano, preco, marca, acessorios, fabricacao) 
VALUES 
('Gol', 'Gtr', 2002, 45500.00, 'Volkswagen', 'som, calota, aro 18', false);

--select todas as colunas (*)
SELECT * FROM public.carros;

--selecionando algumas colunas
SELECT id, preco FROM public.carros;

SELECT fabricacao, ano, preco FROM public.carros;

--Inserindo várias linhas de uma só vez

--Inserir dados na tabela
INSERT INTO carros (nome, modelo, ano, preco, marca, fabricacao) 
VALUES 
('Onix', 'Premier', 2023, 125000.00, 'Chevrolet', true),
('Corolla', 'Altis', 2024, 180500.00, 'Toyota', false);

--select como ordenação
select * from carros order by id desc

--select com ordenação na string
select * from carros order by nome asc

--select com condiçao
--select * from carros where fabricacao = false
select * from carros where fabricacao is false

--select com condilçao
select * from carros where fabricacao is false order by nome asc

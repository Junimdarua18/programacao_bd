/*Progamação de Banco De Dados
Funções Nativas dp banco MySQL
*/
-- 1. Criando tabela medicoes_experimento
CREATE TABLE  medicoes_experimento (
  repeticao INT, 
  valor_medido DECIMAL(10,4)
  );
  
-- Carga de dados 
INSERT INTO medicoes_experimento (repeticao, valor_medido) VALUES
 (1, 12.3454),
 (2, 12.2354),
 (3, 13.1354),
 (4, 12.1767),
 (5, 11.2827),
 (6, 12.3849);
 -- 2. Aplicando função para arrendondamento de valores 
    select * from medicoes_experimento;
    
    SELECT repeticao, round(valor_medido) FROM medicoes_experimento;
    
-- 2.1 Aplicando função de agregação, exibindo media dos valores de uma coluna (valor_medido)
SELECT AVG(valor_medido) FROM medicoes_experimento;

SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;

-- 2.2 Apague a tabela 
drop table medicoes_experimento;

-- 2.3 Criando tabela medicoes experimento
CREATE TABLE medicoes_experimento (
repeticao INT,
valor_medido DECIMAL(6,4),
sujeito CHAR(1)
);

-- 2.4 Carga de dados
INSERT INTO medicoes_experimento ( repeticao, valor_medido, sujeito) VALUES 
(1,12.3454, 'A'),
(2,12.2354, 'A'),
(3,13.1354, 'A'),
(4,12.1767, 'A'),
(5,11.2827, 'A'),
(6,12.3849, 'A'),
(1,13.3454, 'B'),
(2,13.2354, 'B'),
(3,14.1454, 'B'),
(4,13.1567, 'B'),
(5,12.2627, 'B'),
(6,13.5649, 'B');

-- 2.4 Consultando registros da tabela 
select * from medicoes_experimento;

-- 2.5 Consultando registros agrupados com função de agregação 
SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;


/* Progamação de Banco De Dados
Funções e operadores de Strings e expressões
*/
-- 01. Exibindo apenas o Olá mundo
SELECT "Olá mundo";

-- 01.1 A Função CONCAT realiza a concatenação de tres strings
SELECT concat("Olá", "2024", "mundo");

-- 01.2 A função LOWER converte as letras maiúsculas em letras minúsculas

SELECT LOWER("Converte TUDO para minúsculas");

-- 01. 3 A função LPAD (left pad) acrescenta zeros (terceiro argumento) A string "123"

SELECT LPAD('123', 4, '0');

-- 01.4 Exibe string com espaços nas extremidades
SELECT 'string com espacos nas extremidades';

-- 01.5 A função TRIM remove os espaços em branco das extremidades da string

select trim(' string com espaços nas extremidades ');

-- 01.6 A Função REGEXP_SUBSTR procura um determinado padrão (segundo argumento) numa string informada (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+');

-- 02. Criando nova tabela 

CREATE TABLE clientes_experimentos (
 id INT PRIMARY KEY,
 nome_completo VARCHAR(255),
 email VARCHAR(255),
 telefone VARCHAR(20)
 );


/* Progamação de Banco De Dados
Funções e operadores de Strings e expressões
*/
-- 01. Exibindo apenas o Olá mundo
SELECT "Olá mundo";

-- 01.1 A Função CONCAT realiza a concatenação de tres strings
SELECT concat("Olá", "2024", "mundo");

-- 01.2 A função LOWER converte as letras maiúsculas em letras minúsculas

SELECT LOWER("Converte TUDO para minúsculas");

-- 01. 3 A função LPAD (left pad) acrescenta zeros (terceiro argumento) A string "123"

SELECT LPAD('123', 4, '0');

-- 01.4 Exibe string com espaços nas extremidades
SELECT 'string com espacos nas extremidades';

-- 01.5 A função TRIM remove os espaços em branco das extremidades da string

select trim(' string com espaços nas extremidades ');

-- 01.6 A Função REGEXP_SUBSTR procura um determinado padrão (segundo argumento) numa string informada (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+');

-- 02. Criando nova tabela 

CREATE TABLE clientes_experimentos (
 id INT PRIMARY KEY,
 nome_completo VARCHAR(255),
 email VARCHAR(255),
 telefone VARCHAR(20)
 );

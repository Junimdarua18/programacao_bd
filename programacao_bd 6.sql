-- 01.6função REGEXP SUBSTR procura um determinado padrão (segundo argumento) numa string informada (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+');

-- 02. Criando nova tabela
CREATE TABLE clientes experimentos(
id INT PRIMARY KEY,
nome_completo VARCHAR (255),
email VARCHAR(255),
telefone VARCHAR(20)
);

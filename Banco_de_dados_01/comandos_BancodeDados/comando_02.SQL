/*para criar abase do banco de dados*/
CREATE DATABASE tester;

/*tabela com id*/
CREATE TABLE(
 Id INT AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(122),   
     EMAIL VARCHAR(122)
);

/*Adicionar nova coluna apos a tabela criada */

ALTER TABLE nomeDaTabela
ADD IDADE INT;

/*para deletar os intens da tabela*/
DELETE FROM clientes WHERE id = 1


/*para ALTERAR A TABELA*/
ALTER TABLE clientes
CHANGE email Email_pessoal VARCHAR(255);

 /*para excluir o banco de dados*/
drop DATABASE nome do banco

 /*para excluir os registros*/
TRUNCATE TABLE nome do banco

/*para EXCLUIR UM CAMPO DA TABELA*/
ALTER TABLE clientes drop COLUMN Email_pessoal

/*inserir dados*/

INSERT INTO cliente (nome, email) VALUES ("JUNIOR", "junior@gmail.com")

/*inserir novo dados*/

INSERT INTO cliente (nome, email)
VALUES
('Maria', 'maria@gmail.com'),
('Andre', 'amdre@gmail.com'),
('Andy', 'andy@gmail.com'),

/*consulta basica*/
SELECT nome, email from cliente

/*consulta com condição*/
SELECT nome, email from cliente where idade > 30

/*consulta tudo*/
SELECT * from clientes

/*seleciona tudo menos alguma coisa como vemos ta negando o teste2*/
SELECT * FROM usuarios WHERE NOT nome = "teste2";

/*consulta e seleciona entre 20 e 30*/
SELECT nome , idade FROM alunos WHERE idade >= 20 AND  idade <= 30; 

/*para fazer o update*/
UPDATE NOME_DA_TABELA SET campo1 = valor1, campo2 = valor2
ou
UPDATE cliente SET nome ='yan' where id = 1;

/*update  de 2 formas*/
update NOME_DA_TABELA
set coluna1 = novo_valor1, coluna2 = novo_valor2, ...
where condição;

update clientes
set nome ='mrbeast'
where id = 1;

/*data de nascimento*/
DATE = DATA DE NACISMENTO

/*hora*/
SELECT HOUR('12:30:34') AS HORA, MINUTE('12:30:34') AS MINUTOS, SECOND('12:30:34') AS SEGUNDOS;

/*minutos ou horas em forma de minutos e segundos*/
SELECT TIMEDIFF('12:35:34', '12:30:46');

/*inner join*/
SELECT *  
FROM usuario
INNER JOIN postagens 
ON postagens.id_usuario = usuario.id_usuario;

/*seleciona todas as com b, vai mudando de letra que ai vai parecer todas com b ou a c d ....*/
SELECT * FROM aluno WHERE nome LIKE 'b%'; 


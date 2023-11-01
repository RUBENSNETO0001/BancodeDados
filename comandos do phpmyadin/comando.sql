/*primary key*/
CREATE TABLE endereco(
 endereco_Id INT AUTO_INCREMENT PRIMARY KEY, 
 numero_rua INT,
 nome_rua varchar(222),
 cidade varchar(111)
);


/*recebedor*/
CREATE TABLE usuario(
 Id INT AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(122) NOT NULL,   
     endereco_ID INT,
    FOREIGN KEY(endereco_ID) REFERENCES endereco(endereco_ID)
);
/*USAR O NOT NULL NO NOME*/
name VARCHAR(122) NOT NULL, 


$conecao = new mysqli('localhost' , 'root', '', 'nome_do banco_dados');

SELECT *(SELECT * from tabela2)
from tabela1

  -- CRIAR PROCEDIMENTO
DELIMITER //

CREATE PROCEDURE LISTAR_ALUNOS()
BEGIN
	SELECT* FROM ALUNOS;
END//

DELIMITER ;

  -- CHAMAR PROCESSEDIMENTO
CALL LISTAR_ALUNOS();

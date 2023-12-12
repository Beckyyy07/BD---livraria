
-- Atualizando dados contidos nas tabelas do banco 

UPDATE exemplares SET estado = 'Muito bom' WHERE numeroSerie = 1;

UPDATE livros SET titulo = 'Homero, Iliada' WHERE ISBN = 1;

UPDATE departamentos SET nome = 'Tecnologia da Informação 2' WHERE iddepartamentos = 1;

UPDATE palavrasChave SET palavrasChave = 'Nova Palavra' WHERE código = 1;
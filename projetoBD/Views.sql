
-- View para listar todos os pedidos em andamento:

CREATE VIEW vw_pedidos_em_andamento AS
SELECT *
FROM pedidosEVendas
WHERE statusPedido = 'Concluído';


select * from vw_pedidos_em_andamento;

-- View para calcular o número de exemplares disponíveis para cada livro:

CREATE VIEW vw_num_exemplares_por_livro AS
SELECT livros.titulo, COUNT(exemplares.numeroSerie) AS num_exemplares
FROM livros
LEFT JOIN exemplares ON livros.exemplares_numeroSerie = exemplares.numeroSerie
GROUP BY livros.titulo;

-- View para listar os livros sem palavras-chave associadas:

CREATE VIEW vw_livros_sem_palavras_chave AS
SELECT livros.titulo
FROM livros
LEFT JOIN livros_has_palavrasChave ON livros.ISBN = livros_has_palavrasChave.livros_ISBN
WHERE livros_has_palavrasChave.livros_ISBN IS NULL;

-- View para listar os departamentos e seus funcionários:

CREATE VIEW vw_departamentos_funcionarios AS
SELECT departamentos.nome, funcionarios.nome AS funcionario
FROM departamentos
LEFT JOIN funcionarios ON departamentos.iddepartamentos = funcionarios.departamentos_iddepartamentos; 

-- View para calcular a quantidade total de páginas de todos os livros:

CREATE VIEW vw_total_paginas_livros AS
SELECT SUM(numeroPaginas) AS total_paginas
FROM livros;

-- View para listar livros e suas palavras-chave associadas:

CREATE VIEW vw_livros_palavras_chave AS
SELECT livros.titulo, palavrasChave.palavrasChave
FROM livros
JOIN livros_has_palavrasChave ON livros.ISBN = livros_has_palavrasChave.livros_ISBN
JOIN palavrasChave ON livros_has_palavrasChave.palavrasChave_código = palavrasChave.código;

-- View para listar exemplares danificados e seus livros associados:

CREATE VIEW vw_exemplares_danificados AS
SELECT exemplares.numeroSerie, livros.titulo
FROM exemplares
JOIN livros ON exemplares.numeroSerie = livros.exemplares_numeroSerie
WHERE exemplares.estado = 'Danificado';

-- View para listar os livros vendidos em um determinado período de tempo:

CREATE VIEW vw_livros_vendidos_periodo AS
SELECT livros.titulo, pedidosEVendas.dataTransacao
FROM livros
JOIN pedidosEVendas ON livros.ISBN = pedidosEVendas.livros_ISBN
WHERE pedidosEVendas.dataTransacao BETWEEN '2023-01-01' AND '2023-12-31';

-- View para listar os livros e seus autores que estão na área de conhecimento de Tecnologia:

CREATE VIEW vw_livros_autores_tecnologia AS
SELECT livros.titulo, autores.nome
FROM livros
JOIN autores ON livros.autores_idAutor = autores.idAutor
JOIN areasDeConhecimento ON livros.areasDeConhecimento_codigoDaArea = areasDeConhecimento.codigoDaArea
WHERE areasDeConhecimento.areaDeConhecimento = 'Tecnologia';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

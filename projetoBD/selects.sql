
-- Listar todos os livros de um autor específico:
SELECT livros.titulo
FROM livros
JOIN autores ON livros.autores_idAutor = autores.idAutor
WHERE autores.nome = 'Godofredo';

-- Contar o número de exemplares disponíveis para cada livro:
SELECT livros.titulo, COUNT(exemplares.numeroSerie) AS num_exemplares
FROM livros
LEFT JOIN exemplares ON livros.exemplares_numeroSerie = exemplares.numeroSerie
GROUP BY livros.titulo;

-- Listar os livros que têm mais de 300 páginas:
SELECT titulo, numeroPaginas
FROM livros
WHERE numeroPaginas > 300;

-- Listar os livros em uma determinada área de conhecimento:
SELECT livros.titulo, areasDeConhecimento.areaDeConhecimento
FROM livros
JOIN areasDeConhecimento ON livros.areasDeConhecimento_codigoDaArea = areasDeConhecimento.codigoDaArea
WHERE areasDeConhecimento.areaDeConhecimento = 'Filosofia';

-- Listar todos os autores e seus ID's:
SELECT autores.nome, sum(livros.ISBN) AS Id_autor
FROM autores
JOIN livros ON autores.idAutor = livros.autores_idAutor
GROUP BY autores.idAutor
HAVING Id_autor >= 1;

-- Listar os departamentos e seus funcionários:
SELECT departamentos.nome, funcionarios.nome AS funcionario
FROM departamentos
LEFT JOIN funcionarios ON departamentos.iddepartamentos = funcionarios.departamentos_iddepartamentos;

-- Calcular o total de vendas por método de pagamento:
SELECT pagamento, COUNT(idpedidosEVendas) AS total_vendas
FROM pedidosEVendas
GROUP BY pagamento;

-- Listar todos os pedidos em andamento:
SELECT *
FROM pedidosEVendas
WHERE statusPedido = 'Em andamento';

-- Listar funcionários que não estão associados a um departamento:
SELECT funcionarios.nome
FROM funcionarios
LEFT JOIN departamentos ON funcionarios.departamentos_iddepartamentos = departamentos.iddepartamentos
WHERE departamentos.nome IS NULL;

-- Listar livros sem palavras-chave associadas:
SELECT livros.titulo
FROM livros
LEFT JOIN livros_has_palavrasChave ON livros.ISBN = livros_has_palavrasChave.livros_ISBN
WHERE livros_has_palavrasChave.livros_ISBN IS NULL;

-- Listar exemplares danificados e seus livros associados:
SELECT exemplares.numeroSerie, livros.titulo
FROM exemplares
JOIN livros ON exemplares.numeroSerie = livros.exemplares_numeroSerie
WHERE exemplares.estado = 'Danificado';

-- Listar funcionários e seus pedidos de vendas associados:
SELECT funcionarios.nome as "Vendedor", pedidosEVendas.cliente
FROM funcionarios
JOIN pedidosEVendas ON funcionarios.idfuncionarios = pedidosEVendas.funcionarios_idfuncionarios;

-- Listar os livros
SELECT livros.titulo
FROM livros;

-- Calcular a quantidade total de páginas de todos os livros:
SELECT SUM(numeroPaginas) AS total_paginas
FROM livros;

-- Listar todos os livros vendidos em um determinado período de tempo:
SELECT livros.titulo, pedidosEVendas.dataTransacao
FROM livros
JOIN pedidosEVendas ON livros.ISBN = pedidosEVendas.livros_ISBN
WHERE pedidosEVendas.dataTransacao BETWEEN '2023-01-01' AND '2023-12-31';

-- Listar os livros e seus autores que estão na área de conhecimento de Tecnologia:
SELECT livros.titulo, autores.nome
FROM livros
JOIN autores ON livros.autores_idAutor = autores.idAutor
JOIN areasDeConhecimento ON livros.areasDeConhecimento_codigoDaArea = areasDeConhecimento.codigoDaArea
WHERE areasDeConhecimento.areaDeConhecimento = 'Filosofia';

-- Calcular o número médio de páginas dos livros em cada área de conhecimento:
SELECT areasDeConhecimento.areaDeConhecimento, AVG(livros.numeroPaginas) AS media_paginas
FROM livros
JOIN areasDeConhecimento ON livros.areasDeConhecimento_codigoDaArea = areasDeConhecimento.codigoDaArea
GROUP BY areasDeConhecimento.areaDeConhecimento;

-- Listar os livros e suas editoras, ordenados pelo nome da editora:
SELECT livros.titulo, editoras.nome AS editora
FROM livros
JOIN editoras ON livros.editora = editoras.idEditora
ORDER BY editoras.nome;

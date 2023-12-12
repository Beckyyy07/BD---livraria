

-- Inserindo dados na tabela autores
INSERT INTO autores (nome, biografia, nacionalidade, dataNascimento)
VALUES
('Homero', 'Iliada, Odisséia', 'Grego', '928-01-01'),
('Godofredo', 'As Travessuras de Godofredo, Godofredo Vol 2', 'Brasileiro', '1985-05-15'),
('Godolores', 'Como se apaixonar por ele em 500 dias, Apaixonada Sempre', 'Norte Americana', '1982-11-20'),
('J.K. Howlling', 'Harry Potter e a Pedra Filosofal', 'Inglesa', '1978-03-10'),
('J.K. Howlling', 'Harry Potter e a Câmara Secreta ', 'Inglesa', '1978-03-10'),
('J.K. Howlling', 'Harry Potter e o Prisioneiro de Azkaban ', 'Inglesa', '1978-03-10'),
('J.K. Howlling', 'Harry Potter e o Cálice de Fogo ', 'Inglesa', '1978-03-10'),
('J.K. Howlling', 'Harry Potter e o Enigma do Príncipe ', 'Inglesa', '1978-03-10'),
('J.K. Howlling', 'Harry Potter e a Ordem da Fênix ', 'Inglesa', '1978-03-10'),
('Stephenie Meyer', 'Crepúsculo: Lua Nova', 'Americana', '1987-04-11');


-- Inserindo dados na tabela exemplares
INSERT INTO exemplares (numeroSerie, estado, localizacao)
VALUES
(1, 'Bom', 'Prateleira A1'),
(2, 'Danificado', 'Prateleira B3'),
(3, 'Bom', 'Prateleira C2'),
(4, 'Bom', 'Prateleira D5'),
(5, 'Bom', 'Prateleira E1'),
(6, 'Excelente', 'Prateleira F4'),
(7, 'Muito Bom', 'Prateleira G6'),
(8, 'Bom', 'Prateleira H3'),
(9, 'Danificado', 'Prateleira I8'),
(10, 'Muito Bom', 'Prateleira J7');


-- Inserindo dados na tabela areasDeConhecimento
INSERT INTO areasDeConhecimento (codigoDaArea, areaDeConhecimento, descricao)
VALUES
(1, 'Filosofia', 'Área de Filosofia e Conhecimentos Humanos'),
(2, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(3, 'Romance', 'Área de Romance, Cinema e Cultura'),
(4, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(5, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(6, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(7, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(8, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(9, 'Ficção Científica', 'Área de Ficção e Imaginação'),
(10, 'Ficção Científica', 'Área de Ficção e Imaginação');


-- Inserir dados na tabela livros
INSERT INTO livros (titulo, autor, editora, dataPublicacao, genero, numeroPaginas, descricao, autores_idAutor, exemplares_numeroSerie, areasDeConhecimento_codigoDaArea)
VALUES
('Ilíada', 'Homero', 'SESI-SP', '2020-01-15', 'Filosofia', 300, 'Conta a história da Guerra de Troia.', 1, 1, 1),
('As Travessuras de Godofredo', 'Godofredo', 'Senac-PE ', '2023-10-16', 'Ficção Científica', 250, 'Godofredo está buscando seus sonhos.', 2, 2, 2),
('Como se apaixonar por ele em 500 dias', 'Godolores', 'Senac-PE', '2023-02-10', 'Romance', 280, 'Descrição do Livro 3', 3, 3, 3),
('Harry Potter e a Pedra Filosofal', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica', 400, 'Primeiro Livro da Série', 4, 4, 4),
('Harry Potter e a Câmara Secreta', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica','421', 'Segundo Livro da Série', 5, 5, 5),
('Harry Potter e o Prisioneiro de Azkaban ', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica', 380, 'Terceiro Livro da Série', 6, 6, 6),
('Harry Potter e o Cálice de Fogo ', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica', 246, 'Quarto Livro da Série', 7, 7, 7),
('Harry Potter e o Enigma do Príncipe', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica', 432, 'Quinto Livro da Série', 8, 8, 8),
('Harry Potter e a Ordem da Fênix ', 'J.K.Howlling', 'Bloomsbury Publishing', '1997-02-12', 'Ficção Científica', 280, 'Sexto Livro da Série', 9, 9, 9),
('Crepúsculo: Lua Nova', 'Stephenie Meyer', 'Intrínseca', '2008-09-12', 'Romance', 401, 'Para Bella Swan quer Edward Cullen. ', 10, 10, 10);


-- Inserindo dados na tabela departamentos
INSERT INTO departamentos (iddepartamentos, nome, responsavel, descricaoAtividade)
VALUES
(1, 'TI', 'Anderson', 'Departamento de Tecnologia da Informação'),
(2, 'RH', 'Sophia', 'Departamento de Recursos Humanos'),
(3, 'Financeiro', 'Rebeka', 'Departamento Financeiro'),
(4, 'Logística', 'Godofredinho', 'Departamento de Logística'),
(6, 'Reciclagem', 'Epaminondas', 'Departamento de Reciclagem'),
(7, 'Monitoramento', 'Carlos', 'Departamento de Monitoramento'),
(8, 'Serviços Gerais', 'João Paulo', 'Departamento de Serviços Gerais'),
(9, 'Gestão', 'Adriel', 'Departamento de Gestão'),
(10, 'Almoxarifado', 'Vinicius', 'Departamento de Almoxarifado'),
(11, 'Enfermaria', 'Rejane', 'Departamento de Enfermaria');

-- Inserindo dados na tabela palavrasChave
INSERT INTO palavrasChave (palavrasChave, código, descricao)
VALUES
('Filosofia', 1, 'Livros contendo teor filosófico e de estudo'),
('Aventura', 2, 'Histórias com desafios e exploração.'),
('Amor', 3, ' Narrativas do amor e relacionamentos.'),
('Mistério', 4, ' Enredos que envolvem suspense e mistérios.'),
('Mistério', 5, ' Enredos que envolvem suspense e mistérios.'),
('Mistério', 6, ' Enredos que envolvem suspense e mistérios.'),
('Mistério', 7, ' Enredos que envolvem suspense e mistérios.'),
('Mistério', 8, ' Enredos que envolvem suspense e mistérios.'),
('Mistério', 9, ' Enredos que envolvem suspense e mistérios.'),
('Coragem', 10, ' Bravura e superação de desafios.');

-- Inserindo dados na tabela funcionarios
INSERT INTO funcionarios (idfuncionarios, nome, cargo, telefone, endereco, departamentos_iddepartamentos)
VALUES
(1, 'Anderson', 'Analista', '123-456-7890', 'Rua A, 123', 1), -- Departamento TI
(2, 'Sophia', 'Gerente', '234-567-8901', 'Rua B, 456', 2), -- Departamento RH
(3, 'Rebeka', 'Assistente', '345-678-9012', 'Rua C, 789', 3), -- Departamento Financeiro
(4, 'Godofredinho', 'Analista', '456-789-0123', 'Rua D, 101', 4), -- Departamento Logística
(5, 'Epaminondas', 'Gerente', '567-890-1234', 'Rua E, 202', 6), -- Departamento Reciclagem
(6, 'Carlos', 'Engenheiro', '678-901-2345', 'Rua F, 303', 6), -- Departamento Monitoramento
(7, 'João Paulo', 'Técnico', '789-012-3456', 'Rua G, 404', 7), -- Departamento Serviços Gerais
(8, 'Adriel', 'Analista', '890-123-4567', 'Rua H, 505', 8), -- Departamento Gestão
(9, 'Vinicius', 'Assistente', '901-234-5678', 'Rua I, 606', 9), -- Departamento Almoxarifado
(10, 'Rejane', 'Enfermeiro', '012-345-6789', 'Rua J, 707', 10); -- Departamento Enfermaria

-- Inserir dados na tabela pedidosEVendas
INSERT INTO pedidosEVendas (idpedidosEVendas, cliente, dataTransacao, statusPedido, pagamento, funcionarios_idfuncionarios, livros_ISBN)
VALUES
(1, 'Marco André', '2022-01-10', 'Concluído', 'Cartão', 1, 1),
(2, 'Paula Cristina', '2023-10-15', 'Em andamento', 'Boleto', 2, 2),
(3, 'José Augusto', '2023-03-20', 'Em andamento', 'Cartão', 3, 3),
(4, 'Pastor Cleiton Colins', '2023-04-25', 'Concluído', 'Boleto', 4, 4),
(5, 'Barack Obama', '2023-05-30', 'Em andamento', 'Cartão', 5, 5),
(6, 'Bill Clinton', '2019-03-29', 'Concluído', 'Cartão', 6, 6),
(7, 'Rainha Elizabeth', '2022-04-10', 'Concluído', 'Cartão', 7, 7),
(8, 'Pablo Escobar', '1992-02-28', 'Concluído', 'Boleto', 8, 8),
(9, 'Anderson Veloso', '2023-05-30', 'Em andamento', 'Cartão', 9, 9),
(10, 'Paula Trajano', '2023-05-30', 'Em andamento', 'Cartão', 10, 10);

-- Inserindo dados na tabela livros_has_palavrasChave
-- Cada livro está associado a duas palavras-chave diferentes
INSERT INTO livros_has_palavrasChave (livros_ISBN, palavrasChave_código)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 1),
(4, 2),
(4, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(7, 3),
(7, 4),
(8, 5),
(8, 1),
(9, 2),
(9, 3),
(10, 4),
(10, 5);

-- Inserir dados na tabela editoras
INSERT INTO editoras (nome)
VALUES
('SESI-SP'),
('Senac - PE '),
('Senac - PE'),
('Bloomsbury Publishing'),
('Bloomsbury Publishing'),
('Bloomsbury Publishing'),
('Bloomsbury Publishing'),
('Bloomsbury Publishing'),
('Bloomsbury Publishing'),
('Intrínseca');

/*
DELETE FROM autores WHERE idAutor = 1;

 DELETE FROM exemplares WHERE numeroSerie = 1;

DELETE FROM livros WHERE ISBN = 1;

 DELETE FROM departamentos WHERE iddepartamentos = 1;

DELETE FROM palavrasChave WHERE código = 1;
	*/
    

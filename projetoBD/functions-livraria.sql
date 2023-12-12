set global log_bin_trust_function_creators = 1;

delimiter $$
create function LivrosGeneros(genero varchar(60)) returns int
begin
    declare totalLivros int;
    select count(*) into totalLivros
    from pedidosEVendas pev
    join livros on pev.livros_ISBN = livros.ISBN
    where livros.genero = genero;
    return totalLivros;
end $$
delimiter ;


select * from livros;
select LivrosGeneros('Ficção Científica');
select LivrosGeneros('Romance');



delimiter $$
create function LivrosPorAutor(nomeAutor varchar(255)) returns int
begin
    declare totalLivros int;
    select count(*) into totalLivros
    from pedidosEVendas
    join livros on pedidosEVendas.livros_ISBN = livros.ISBN
    where livros.autor = nomeAutor;
    return totalLivros;
end $$
delimiter ;

select * from livros;
select LivrosPorAutor('J.K.Howlling');
select LivrosPorAutor('Godofredo');


delimiter $$
create function LivrosPorEditora(nome varchar(255)) returns int
begin
    declare totalLivros int;

    select count(*) into totalLivros
    from livros
    where editora = nome;

    return totalLivros;
end $$
delimiter ;

select LivrosPorEditora('Bloomsbury Publishing');



delimiter $$
create function LivrosPeloNome(nome varchar(255)) returns int
begin
    declare totalLivros int;

    select count(*) into totalLivros
    from livros
    where titulo like concat('%', nome, '%');

    return totalLivros;
end $$
delimiter ;

select * from livros;
select LivrosPeloNome('Harry');
select LivrosPeloNome('Homero');


delimiter $$
create function StatusPedidos(totalStatus varchar(20)) returns int
begin
	select count(*) into totalStatus
    from pedidosEVendas
		where statusPedido = totalStatus;

    return totalStatus;
end $$
delimiter ;

select * from pedidosevendas;
select StatusPedidos('Concluído');
select StatusPedidos('Em andamento');



delimiter $$
create function Pagamento(metodoPag varchar(20)) returns int
begin
    select count(*) into metodoPag
    from pedidosEVendas
		where pagamento = metodoPag;

    return metodoPag;
end $$
delimiter ;

select * from pedidosevendas;
select Pagamento('Boleto');
select Pagamento('Cartão');
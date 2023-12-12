
select * from areasdeconhecimento;
select * from autores;
select * from departamentos;
select * from editoras;
select * from exemplares;
select * from funcionarios;
select * from livros;
select * from livros_has_palavraschave;
select * from palavraschave;
select * from pedidosevendas;

drop trigger tgr_Funcionarios_Bef_insert;
delimiter $$
create trigger tgr_Funcionarios before insert
	on funcionarios
	for each row
begin
    if dayofweek(now()) in (3) then
        signal sqlstate '45000'
            set message_text = 'Não pode inserir funcionários as terças';
    end if;
end $$
delimiter ;


delimiter $$
create trigger tgr_Livros_ISBN before insert 
	on livros
	for each row
begin
    if new.ISBN is null or new.ISBN = '' then
        signal sqlstate '45000'
        set message_text = 'Calma, ISBN do livro não pode ser nulo ou vazio.';
    end if;
end $$
delimiter ;

call insertLivros(null, 'ads', 'Danilo Farias', 'SENAC', '2019-04-21', 'Científico', '200', 'Danilo para a tecnologia', 11, 11, 11);


delimiter $$
create trigger tgr_Livros_Titulo before insert 
	on livros
	for each row
begin
    if new.titulo is null or new.titulo = '' then
        signal sqlstate '45000'
        set message_text = 'OPA! O nome do livro não pode ser nulo ou vazio, camarada.';
    end if;
end $$
delimiter ;

call insertLivros(11, '', 'Danilo Farias', 'SENAC', '2019-04-21', 'Científico', '200', 'Danilo para a tecnologia', 11, 11, 11);


delimiter $$
create trigger tgr_Livros_Autor before insert 
	on livros
	for each row
begin
    if new.autor is null or new.autor = '' then
        signal sqlstate '45000'
        set message_text = 'OPA! O nome do autor não pode ser nulo ou vazio.';
    end if;
end $$
delimiter ;

call insertLivros(11, 'ADS - Banco de Dados', null, 'SENAC', '2019-04-21', 'Científico', '200', 'Danilo para a tecnologia', 11, 11, 11);


delimiter $$
create trigger tgr_Livros_editora before insert 
	on livros
	for each row
begin
    if new.editora is null or new.editora = '' then
        signal sqlstate '45000'
        set message_text = 'Ei!! O nome da editora não pode ser nulo ou vazio...';
    end if;
end $$
delimiter ;

call insertLivros(11, 'ADS - Banco de Dados', 'Danilo Farias', '', '2019-04-21', 'Científico', '200', 'Danilo para a tecnologia', 11, 11, 11);


delimiter $$
create trigger tgr_Autores_nome before insert 
	on autores
	for each row
begin
    if new.nome is null or new.nome = '' then
        signal sqlstate '45000'
        set message_text = 'OPA! O nome do autor não pode ser nulo ou vazio, camarada.';
    end if;
end $$
delimiter ;

call inserirAutor(21, '', 'ADS', 'Brasileiro', '1989-03-24', null);
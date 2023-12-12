delimiter $$
create procedure cadFuncionario(
					in idFun int, 
                    in n varchar(45),
                    in ca varchar(25),
                    in tel varchar(45),
                    in e varchar(45),
                    in dep int)
begin
	insert into funcionarios (idfuncionarios, nome, cargo, telefone, endereco, departamentos_iddepartamentos)
		values (idFun, n, ca, tel, e, dep);
        select * from funcionarios;
end $$
delimiter ;

call cadFuncionario(11, 'Cleber', 'Gerente', '546-342-2356', 'Rua K, 235', 4);
call cadFuncionario(12, 'Danilo', 'Guarda', '543-322-2569', 'Rua L, 245', 6);

select * from funcionarios;

delimiter $$
create procedure delFuncionario(in idFun int)
begin
	delete from funcionarios 
		where idfuncionarios = idFun;
	select * from funcionarios;
end $$
delimiter ;

call delFuncionario(11);

drop procedure insertLivros;
delimiter $$
create procedure insertLivros(
					in isbn int, 
                    in ti varchar(45),
                    in au varchar(25),
                    in ed varchar(45),
                    in dtPubli date,
                    in ge varchar(45),
                    in numPag int,
                    in des varchar(90),
                    in idAut int,
                    in exemp int,
                    in areas int
)
begin
	insert into livros(ISBN, titulo, autor, editora, dataPublicacao, genero, numeroPaginas, descricao, 
						autores_idAutor, exemplares_numeroSerie, areasDeConhecimento_codigoDaArea)
		values (isbn, ti, au, ed, dtPubli, ge, numPag, des, idAut, exemp, areas);
        select * from livros;
end $$
delimiter ;

select * from livros;
call insertLivros(11, 'ADS - Banco de Dados', 'Danilo Farias', 'SENAC', '2019-04-21', 'Científico', '200', 'Danilo para a tecnologia', 11, 11, 11);

drop procedure deletLivros;
delimiter $$
create procedure deletLivros(
					in isbn int, 
                    in idAut int,
                    in exemp int,
                    in areas int
)
begin
	delete from livros 
		where ISBN = isbn and autores_idAutor = idAut and exemplares_numeroSerie = exemp and areasDeConhecimento_codigoDaArea = areas;
	select * from livros;
end $$
delimiter ;

call deletLivros(11, 11, 11, 11);

select * from pedidosevendas;

delimiter $$
create procedure inserirAutor(
					in idAut int, 
                    in n varchar(45),
                    in bio varchar(25),
                    in nac varchar(45),
                    in dtNasc varchar(45),
                    in ob int)
begin
	insert into autores (idAutor, nome, biografia, nacionalidade, dataNascimento, obras)
		values (idAut, n, bio, nac, dtNasc, ob);
        select * from autores;
end $$
delimiter ;

call inserirAutor(21, 'Danilo Farias', 'ADS', 'Brasileiro', '1989-03-24', null);

select * from autores;

delimiter $$
create procedure deletaAutor(in idAut int)
begin
	delete from autores 
		where idAutor = idAut;
	select * from autores;
end $$
delimiter ;

call deletaAutor(21);
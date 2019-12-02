/*
    Time
    (Codigo PK, Nome)
    Jogador
    (Codigo PK, Nome, Time FK)
    Jogo
    (Codigo PK, Time1 FK, Time2 FK, DataHora)
    JogoJogador
    (Jogo PK FK, Jogador PK FK, Cestas2, Cestas3, TirosLivres)
    
    Observações:
    * 10 times de 10 jogadores, 5 em quadra e 5 no banco.
    * Sem limite da quantidade de substituições durante os jogos.
    * Todos os times jogam uma única vez contra todos os outros times.
    * 2 pontos pela vitória, 1 ponto pelo empate.

    Considerando o jogo entre os times Mosqueteiro Azul e Saci Vermelho ocorrido as 20:30 do último sábado:
    1) Atribuir uma cesta de 3 pontos ao jogador Joao Palito do time Mosqueteiro Azul.
    2) Alterar a cesta de 2 pontos atribuída erroneamente ao jogador Joao Palito do time Mosqueteiro Azul para o jogador Pedro Cestinha do mesmo time.
    
    Considerando os jogos realizados até o momento:
    3) Mostrar os jogadores que pontuaram em todos os jogos de seus times.
    4) Mostrar os jogadores que marcaram cestas de 3 pontos em 3 jogos consecutivos de seus times.
    5) Mostrar o placar final de cada jogo. check
    6) Mostrar a tabela de classificação do campeonato. 
*/
--VIEW DA TABELA DO CAMPEONATO
create view tabela_completa as 
(select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora, jogadores_pontos.time, jogadores_pontos.nome, jogadores_pontos.cestas2, jogadores_pontos.cestas3, jogadores_pontos.lanceslivres 
from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo
join (select JogoJogador.jogo, JogoJogador.lanceslivres, JogoJogador.cestas2, JogoJogador.cestas3, Jogador.nome, Time.nome as time from JogoJogador
join Jogador on Jogador.codigo = JogoJogador.jogador
join Time on Time.codigo = Jogador.time) as jogadores_pontos
on tabela_casa.codigo = jogadores_pontos.jogo);

--VIEW COM OS DIAS DA SEMANA DE CADA JOGO
create  or replace view tabela_completa as 
(select tabela_casa.codigo, tabela_casa.datahora, extract (DOW FROM tabela_casa.dataHora) as dia_semana ,tabela_casa.nome as casa, tabela_fora.nome as fora, jogadores_pontos.time, jogadores_pontos.nome, jogadores_pontos.cestas2, jogadores_pontos.cestas3, jogadores_pontos.lanceslivres 
from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo
join (select JogoJogador.jogo, JogoJogador.lanceslivres, JogoJogador.cestas2, JogoJogador.cestas3, Jogador.nome, Time.nome as time from JogoJogador
join Jogador on Jogador.codigo = JogoJogador.jogador
join Time on Time.codigo = Jogador.time) as jogadores_pontos
on tabela_casa.codigo = jogadores_pontos.jogo);

-- PREMISSA DA 1 E 2
select * from tabela_completa 
where (casa ilike('MOSQUETEIRO AZUL') or fora ilike('MOSQUETEIRO AZUL') ) and (casa ilike('SACI VERMELHO') or fora ilike('SACI VERMELHO')) and () and ();
-- FALTA GARANTIR QUE O SELECT PEGUE SÓ O JOGO DO ÚLTIMO SÁBADO

-- INSERTS PARA TESTAR A PREMISSA
    insert into Jogo (Time1, Time2, dataHora) values (1, 2, '2019-11-30 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (1, 2, '2019-11-23 20:30');
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 10, 4, 3, 13);
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (46, 20, 4, 16, 13);
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 10, 4, 3, 13);
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (47, 20, 4, 16, 13);

-- PREMISSA DA 3 EM DIANTE

-- 5) Mostrar o placar final de cada jogo.

--casa
select codigo, time, sum(lanceslivres + (cestas2*2) + (cestas3*3)) as pontos_casa from tabela_completa where time = casa and datahora <= now() group by codigo, time;
--visitantes
select sum(lanceslivres + (cestas2*2) + (cestas3*3)) as pontos_fora, time, codigo from tabela_completa where time = fora group by codigo, time;
--resposta final
select placar_casa.codigo, placar_casa.time_casa, placar_casa.pontos_casa, placar_fora.pontos_fora, placar_fora.time_fora from (select codigo, time as time_casa, sum(lanceslivres + (cestas2*2) + (cestas3*3)) as pontos_casa from tabela_completa where time = casa and datahora <= now() group by codigo, time) as placar_casa
join (select sum(lanceslivres + (cestas2*2) + (cestas3*3)) as pontos_fora, time as time_fora, codigo from tabela_completa where time = fora and datahora <= now() group by codigo, time) as placar_fora
on placar_casa.codigo = placar_fora.codigo;

-- TIRA O DIA DA SEMANA DOS JOGOS
select extract (DOW FROM dataHora) from Jogo;

SELECT * FROM (SELECT *, extract (DOW FROM dataHora) as dia_semana FROM Jogo
JOIN Time on Time.codigo = Jogo.Time1 or Time.codigo = Jogo.Time2) AS TMP
where dia_semana = 6;

select * from (SELECT *, extract (DOW FROM dataHora) as dia_semana FROM Jogo) as TMP
where dia_semana = 6 and dataHora < now() order by dataHora desc limit 1;


select * from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tmp1
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tmp2 
on tmp1.codigo = tmp2.codigo
where (tmp1.nome like('MOSQUETEIRO AZUL') or tmp2.nome like('MOSQUETEIRO AZUL')) and (tmp1.nome like('SACI VERMELHO') or tmp2.nome like('SACI VERMELHO'));


--SELECT DA TABELA DO CAMPEONATO SEM RESULTADOS
select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo;

-- UNITE THEM ALL!!!
select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora, jogadores_pontos.time, jogadores_pontos.nome, jogadores_pontos.cestas2, jogadores_pontos.cestas3, jogadores_pontos.lanceslivres 
from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo
join (select JogoJogador.jogo, JogoJogador.lanceslivres, JogoJogador.cestas2, JogoJogador.cestas3, Jogador.nome, Time.nome as time from JogoJogador
join Jogador on Jogador.codigo = JogoJogador.jogador
join Time on Time.codigo = Jogador.time) as jogadores_pontos
on tabela_casa.codigo = jogadores_pontos.jogo;
-- JOGOJOGADOR+JOGADOR
select JogoJogador.jogo, JogoJogador.lanceslivres, JogoJogador.cestas2, JogoJogador.cestas3, Jogador.nome, Time.nome as time from JogoJogador
join Jogador on Jogador.codigo = JogoJogador.jogador
join Time on Time.codigo = Jogador.time;


-- DAQUI PRA BAIXO RETORNA VÁRIOS NADA
/*
select *
from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, extract
(DOW FROM dataHora) as dia_semana, Time.nome
    from Jogo join Time on Time.codigo = Jogo.Time1) as tmp1
    join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome
    from Jogo join Time on Time.codigo = Jogo.Time2) as tmp2
    on tmp1.codigo = tmp2.codigo
where (tmp1.nome
ilike
('MOSQUETEIRO AZUL') or tmp2.nome ilike
('MOSQUETEIRO AZUL')) and
(tmp1.nome ilike
('SACI VERMELHO') or tmp2.nome ilike
('SACI VERMELHO')) and
(tmp1.dia_semana
= 6 and tmp1.dataHora < current_date) order by tmp1.dataHora desc limit 1;




--
select *
from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, extract
(DOW FROM dataHora) as dia_semana, Time.nome
    from Jogo join Time on Time.codigo = Jogo.Time1) as tmp1
    join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome
    from Jogo join Time on Time.codigo = Jogo.Time2) as tmp2
    on tmp1.codigo = tmp2.codigo
where (tmp1.nome ilike('MOSQUETEIRO AZUL') or tmp2.nome ilike('MOSQUETEIRO AZUL')) and (tmp1.nome ilike('SACI VERMELHO') or tmp2.nome ilike('SACI VERMELHO')) and (tmp1.dia_semana
= 6 and tmp1.dataHora < current_date) order by tmp1.dataHora desc limit 1;
*/

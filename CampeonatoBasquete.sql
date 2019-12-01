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
    5) Mostrar o placar final de cada jogo.
    6) Mostrar a tabela de classificação do campeonato. 
*/
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

--VIEW DA TABELA DO CAMPEONATO SEM RESULTADOS
create view tabela_completa as (select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo);

--SELECT DA TABELA DO CAMPEONATO SEM RESULTADOS
select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo;

-- UNITE THEM ALL!!!
select tabela_casa.codigo, tabela_casa.datahora, tabela_casa.nome as casa, tabela_fora.nome as fora, JogoJogador.jogador, JogoJogador.cestas2, JogoJogador.cestas3, JogoJogador.lanceslivres from (select Jogo.codigo, Jogo.Time1, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time1) as tabela_casa
join (select Jogo.codigo, Jogo.Time2, Jogo.datahora, Time.nome from Jogo join Time on Time.codigo = Jogo.Time2) as tabela_fora 
on tabela_casa.codigo = tabela_fora.codigo
join (select JogoJogador.jogo, JogoJogador.cestas2, JogoJogador.cestas3, JogoJogador.lanceslivres, Jogador.nome, Time.nome from JogoJogador join Jogador on Jogador.codigo = JogoJogador.jogador join Time on Time.codigo = Jogador.time) as jogadores_pontos
on tabela_casa.codigo = jogadores_pontos.jogo;

-- JOGOJOGADOR+JOGADOR
select JogoJogador.jogo, JogoJogador.cestas2, JogoJogador.cestas3, JogoJogador.lanceslivres, Jogador.nome, Time.nome from JogoJogador
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

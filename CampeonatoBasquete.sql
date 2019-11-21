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
select *
from (select game.codigo, game.team1, game.datahora, extract
(DOW FROM dataHora) as dia_semana, team.nome
    from game join team on team.codigo = game.team1) as tmp1
    join (select game.codigo, game.team2, game.datahora, team.nome
    from game join team on team.codigo = game.team2) as tmp2
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
create table team (
    codigo serial not null,
    nome varchar(100) not null,
    primary key(codigo)
);
create table player (
    codigo serial not null,
    nome varchar(50) not null,
    team int references team(codigo), 
    primary key(codigo)
);
create table game (
    codigo serial not null,
    team1 int references team(codigo),
    team2 int references team(codigo),
    dataHora timestamp not null,
    primary key(codigo)
);
create table gamePlayer (
    game int references game(codigo),
    player int references player(codigo),
    cestas2 int not null,
    cestas3 int not null,
    lancesLivres int not null,
    primary key(game, player)
);

-- INSERÇÃO DE DADOS
-- TIMES
    insert into team (nome) values ('PORTLAND TRAILBLAZERS');
    insert into team (nome) values ('DETROIT PISTONS');
    insert into team (nome) values ('MOSQUETEIRO AZUL');
    insert into team (nome) values ('SACI VERMELHO');
    insert into team (nome) values ('SEATTLE SUPERSONICS');
    insert into team (nome) values ('TORONTO RAPTORS');
    insert into team (nome) values ('HOUSTON ROCKETS');
    insert into team (nome) values ('NEW YORK KNICKS');
    insert into team (nome) values ('BROOKLYN NETS');
    insert into team (nome) values ('UTAH JAZZ');
-- JOGADORES
-- 1
    insert into player (nome, team) values ('DAMIAN LILLARD', 1);
    insert into player (nome, team) values ('C. J. MCCOLLUM', 1);
    insert into player (nome, team) values ('HASSAN WHITESIDE', 1);
    insert into player (nome, team) values ('JUSUF NURKIC', 1);
    insert into player (nome, team) values ('BILL WALTON', 1);
    insert into player (nome, team) values ('CLYDE DREXLER', 1);
    insert into player (nome, team) values ('ZACH RANDOLPH', 1);
    insert into player (nome, team) values ('ENES KANTER', 1);
    insert into player (nome, team) values ('LAMARCUS ALDRIDGE', 1);
    insert into player (nome, team) values ('BRANDON ROY', 1);
-- 2
    insert into player (nome, team) values ('BEN WALLACE', 2);
    insert into player (nome, team) values ('RASHEED WALLACE', 2);
    insert into player (nome, team) values ('CHAUNCEY BILLUPS', 2);
    insert into player (nome, team) values ('TAYSHAUN PRINCE', 2);
    insert into player (nome, team) values ('RICHARD HAMILTON', 2);
    insert into player (nome, team) values ('BLAKE GRIFFIN', 2);
    insert into player (nome, team) values ('ANDRE DRUMMOND', 2);
    insert into player (nome, team) values ('REGGIE JACKSON', 2);
    insert into player (nome, team) values ('ALLEN IVERSON', 2);
    insert into player (nome, team) values ('DERRICK ROSE', 2);
-- 3 MOSQUETEIRO AZUL
    insert into player (nome, team) values ('JOAO PALITO', 3);
    insert into player (nome, team) values ('PEDRO CESTINHA', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
    insert into player (nome, team) values ('', 3);
-- 4 SACI VERMELHO
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
    insert into player (nome, team) values ('', 4);
-- 5
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
    insert into player (nome, team) values ('', 5);
-- 6
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
    insert into player (nome, team) values ('', 6);
-- 7
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
    insert into player (nome, team) values ('', 7);
-- 8
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
    insert into player (nome, team) values ('', 8);
-- 9
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
    insert into player (nome, team) values ('', 9);
-- 10
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
    insert into player (nome, team) values ('', 10);
-- JOGOS
    insert into game (team1, team2, dataHora) values (1, 2, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 4, '2019-11-16 20:30');
    insert into game (team1, team2, dataHora) values (6, 5, '2019-11-17 20:30');
    insert into game (team1, team2, dataHora) values (7, 8, '2019-11-09 20:30');
    insert into game (team1, team2, dataHora) values (4, 3, '2019-11-09 20:30');
    insert into game (team1, team2, dataHora) values (3, 9, '2019-11-12 20:30');
    insert into game (team1, team2, dataHora) values (1, 4, '2019-11-22 20:30');
    insert into game (team1, team2, dataHora) values (4, 3, '2019-11-22 20:30');
-- JOGOJOGADOR

    insert into gamePlayer (game, player, cestas2, cestas3, lancesLivres) values (1, 1, 5, 6, 8);
    insert into gamePlayer (game, player, cestas2, cestas3, lancesLivres) values (2, 1, 10, 2, 7);
    insert into gamePlayer (game, player, cestas2, cestas3, lancesLivres) values (2, 2, 5, 5, 5);

-- TIRA O DIA DA SEMANA DOS JOGOS
select extract (DOW FROM dataHora) from game;

SELECT * FROM (SELECT *, extract (DOW FROM dataHora) as dia_semana FROM game
JOIN TEAM on team.codigo = game.team1 or team.codigo = game.team2) AS TMP
where dia_semana = 6;

    select * from (SELECT *, extract (DOW FROM dataHora) as dia_semana FROM GAME) as TMP
    where dia_semana = 6 and dataHora < current_date order by dataHora desc limit 1;


select * from (select game.codigo, game.team1, game.datahora, team.nome from game join team on team.codigo = game.team1) as tmp1
join (select game.codigo, game.team2, game.datahora, team.nome from game join team on team.codigo = game.team2) as tmp2 
on tmp1.codigo = tmp2.codigo
where (tmp1.nome like('MOSQUETEIRO AZUL') or tmp2.nome like('MOSQUETEIRO AZUL')) and (tmp1.nome like('SACI VERMELHO') or tmp2.nome like('SACI VERMELHO'));

--
select *
from (select game.codigo, game.team1, game.datahora, extract
(DOW FROM dataHora) as dia_semana, team.nome
    from game join team on team.codigo = game.team1) as tmp1
    join (select game.codigo, game.team2, game.datahora, team.nome
    from game join team on team.codigo = game.team2) as tmp2
    on tmp1.codigo = tmp2.codigo
where (tmp1.nome ilike('MOSQUETEIRO AZUL') or tmp2.nome ilike('MOSQUETEIRO AZUL')) and (tmp1.nome ilike('SACI VERMELHO') or tmp2.nome ilike('SACI VERMELHO')) and (tmp1.dia_semana
= 6 and tmp1.dataHora < current_date) order by tmp1.dataHora desc limit 1;

MAIOR DATA MENOR QUE NOW NO DIA 6
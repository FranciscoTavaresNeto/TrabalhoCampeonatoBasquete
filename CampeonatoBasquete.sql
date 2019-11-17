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
    dataHora timestamp,
    primary key(codigo)
);
create table gamePlayer (
    game int references game(codigo),
    player int references player(codigo),
    cestas2 int,
    cestas3 int,
    lancesLivres int,
    primary key(game, player)
);

-- INSERÇÃO DE DADOS
-- TIMES
insert into team (nome) values ('PORTLAND TRAILBLAZERS');
insert into team (nome) values ('DETROIT PISTONS');
insert into team (nome) values ('NEW ORLEANS PELICANS');
insert into team (nome) values ('TORONTO RAPTORS');
insert into team (nome) values ('HOUSTON ROCKETS');
insert into team (nome) values ('NEW YORK KNICKS');
insert into team (nome) values ('BROOKLYN NETS');
insert into team (nome) values ('LOS ANGELES CLIPPERS');
insert into team (nome) values ('SACRAMENTO KINGS');
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
insert into player (nome, team) values ('RASHEED WALLACE', 1);
insert into player (nome, team) values ('LAMARCUS ALDRIDGE', 1);
insert into player (nome, team) values ('BRANDON ROY', 1);
-- 2
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
insert into player (nome, team) values ('', 2);
-- 3
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
insert into player (nome, team) values ('', 3);
-- 4
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
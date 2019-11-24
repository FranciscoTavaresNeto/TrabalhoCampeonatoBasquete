/*
    COMPILADÃO DE DADOS GENÉRICOS PRA TESTAR OS SELECTS
*/
create table team
(
    codigo serial not null,
    nome varchar(100) not null,
    primary key(codigo)
);
create table player
(
    codigo serial not null,
    nome varchar(50) not null,
    team int references team(codigo),
    primary key(codigo)
);
create table game
(
    codigo serial not null,
    team1 int references team(codigo),
    team2 int references team(codigo),
    dataHora timestamp not null,
    primary key(codigo)
);
create table gamePlayer
(
    game int references game(codigo),
    player int references player(codigo),
    cestas2 int not null,
    cestas3 int not null,
    lancesLivres int not null,
    primary key(game, player)
);


--INSERTS DOS TIMES
    insert into team (nome) values ('MOSQUETEIRO AZUL');
    insert into team (nome) values ('SACI VERMELHO');
    insert into team (nome) values ('Baumbach Inc');
    insert into team (nome) values ('Ebert LLC');
    insert into team (nome) values ('Ward, Yost and Howe');
    insert into team (nome) values ('Hoeger Inc');
    insert into team (nome) values ('Bailey, Davis and Johns');
    insert into team (nome) values ('Bosco-Schoen');
    insert into team (nome) values ('Harvey, Baumbach and Murphy');
    insert into team (nome) values ('Mohr, Klocko and Hartmann');
--INSERTS DOS JOGADORES
    insert into player (nome, team_codigo) values ('Eolande Gebhard', 1);
    insert into player (nome, team_codigo) values ('Orel Vallance', 1);
    insert into player (nome, team_codigo) values ('Jacques Westwell', 1);
    insert into player (nome, team_codigo) values ('Roby Spur', 1);
    insert into player (nome, team_codigo) values ('Sky Samudio', 1);
    insert into player (nome, team_codigo) values ('Phillip Penvarne', 1);
    insert into player (nome, team_codigo) values ('Loralie Tesyro', 1);
    insert into player (nome, team_codigo) values ('Jeni Kent', 1);
    insert into player (nome, team_codigo) values ('Donnamarie Pipworth', 1);
    insert into player (nome, team_codigo) values ('Peder Sach', 1);
    insert into player (nome, team_codigo) values ('Beth Offa', 2);
    insert into player (nome, team_codigo) values ('Nikki Wellen', 2);
    insert into player (nome, team_codigo) values ('Candie Stuchberry', 2);
    insert into player (nome, team_codigo) values ('Elysha Squibbes', 2);
    insert into player (nome, team_codigo) values ('Sanders MacNalley', 2);
    insert into player (nome, team_codigo) values ('Gilles Hamblyn', 2);
    insert into player (nome, team_codigo) values ('Waldo Lunbech', 2);
    insert into player (nome, team_codigo) values ('Pavel Kerbey', 2);
    insert into player (nome, team_codigo) values ('Maggy Hartburn', 2);
    insert into player (nome, team_codigo) values ('Filippa Cahani', 2);
    insert into player (nome, team_codigo) values ('Whitney Poluzzi', 3);
    insert into player (nome, team_codigo) values ('Raeann Huetson', 3);
    insert into player (nome, team_codigo) values ('Peggi Poppy', 3);
    insert into player (nome, team_codigo) values ('Yancy Cannaway', 3);
    insert into player (nome, team_codigo) values ('Warner Ingarfield', 3);
    insert into player (nome, team_codigo) values ('Gerhard Ullock', 3);
    insert into player (nome, team_codigo) values ('Donielle Rilston', 3);
    insert into player (nome, team_codigo) values ('Charity Kersting', 3);
    insert into player (nome, team_codigo) values ('Caresse Scantlebury', 3);
    insert into player (nome, team_codigo) values ('Rosalinde Craigg', 3);
    insert into player (nome, team_codigo) values ('Rayna Nurdin', 4);
    insert into player (nome, team_codigo) values ('Ashia Jehaes', 4);
    insert into player (nome, team_codigo) values ('Hymie Renouf', 4);
    insert into player (nome, team_codigo) values ('Lew Somerfield', 4);
    insert into player (nome, team_codigo) values ('Tomasina Attewell', 4);
    insert into player (nome, team_codigo) values ('Loretta Stoltz', 4);
    insert into player (nome, team_codigo) values ('Bill Tatham', 4);
    insert into player (nome, team_codigo) values ('Gerrard Pavinese', 4);
    insert into player (nome, team_codigo) values ('Joleen Heinrich', 4);
    insert into player (nome, team_codigo) values ('Katalin Joddens', 4);
    insert into player (nome, team_codigo) values ('Andeee Outhwaite', 5);
    insert into player (nome, team_codigo) values ('Grover Storek', 5);
    insert into player (nome, team_codigo) values ('Sharline Fenelow', 5);
    insert into player (nome, team_codigo) values ('Gare Balmann', 5);
    insert into player (nome, team_codigo) values ('Aubrey Shotter', 5);
    insert into player (nome, team_codigo) values ('Corrine Selbie', 5);
    insert into player (nome, team_codigo) values ('Winny Soots', 5);
    insert into player (nome, team_codigo) values ('Jan Craddy', 5);
    insert into player (nome, team_codigo) values ('Patin Kinnett', 5);
    insert into player (nome, team_codigo) values ('Kassi Redhouse', 5);
    insert into player (nome, team_codigo) values ('Mag McGilbon', 6);
    insert into player (nome, team_codigo) values ('Arlen McKinie', 6);
    insert into player (nome, team_codigo) values ('Wilfrid Chedzoy', 6);
    insert into player (nome, team_codigo) values ('Ignazio Curless', 6);
    insert into player (nome, team_codigo) values ('Morena Piddlesden', 6);
    insert into player (nome, team_codigo) values ('Reinhard Bogges', 6);
    insert into player (nome, team_codigo) values ('Adela Jervoise', 6);
    insert into player (nome, team_codigo) values ('Giff McDonnell', 6);
    insert into player (nome, team_codigo) values ('Urbano Perrie', 6);
    insert into player (nome, team_codigo) values ('Arlan Greedier', 6);
    insert into player (nome, team_codigo) values ('Ulla Shotter', 7);
    insert into player (nome, team_codigo) values ('Bonnibelle Stembridge', 7);
    insert into player (nome, team_codigo) values ('Alfred Labro', 7);
    insert into player (nome, team_codigo) values ('Mikol McPhillips', 7);
    insert into player (nome, team_codigo) values ('Dreddy Bayle', 7);
    insert into player (nome, team_codigo) values ('Abby Gniewosz', 7);
    insert into player (nome, team_codigo) values ('Isabelle Brownsmith', 7);
    insert into player (nome, team_codigo) values ('Rosalia Thickins', 7);
    insert into player (nome, team_codigo) values ('Rene Digg', 7);
    insert into player (nome, team_codigo) values ('Barret Odger', 7);
    insert into player (nome, team_codigo) values ('Winn Peckett', 8);
    insert into player (nome, team_codigo) values ('Sarajane Tregunna', 8);
    insert into player (nome, team_codigo) values ('Harland MacCarrick', 8);
    insert into player (nome, team_codigo) values ('Sauveur Lornsen', 8);
    insert into player (nome, team_codigo) values ('Willem Batteson', 8);
    insert into player (nome, team_codigo) values ('Carlen Lumber', 8);
    insert into player (nome, team_codigo) values ('Helene Silmon', 8);
    insert into player (nome, team_codigo) values ('Mendie Courcey', 8);
    insert into player (nome, team_codigo) values ('Verile Chanter', 8);
    insert into player (nome, team_codigo) values ('Denny Brocking', 8);
    insert into player (nome, team_codigo) values ('Cassandry Lillyman', 9);
    insert into player (nome, team_codigo) values ('Eden Jaxon', 9);
    insert into player (nome, team_codigo) values ('Franz Broxton', 9);
    insert into player (nome, team_codigo) values ('Lorene Nealey', 9);
    insert into player (nome, team_codigo) values ('Garey Veel', 9);
    insert into player (nome, team_codigo) values ('Rafferty Hawket', 9);
    insert into player (nome, team_codigo) values ('Augy Chaplain', 9);
    insert into player (nome, team_codigo) values ('Iorgo Adamowicz', 9);
    insert into player (nome, team_codigo) values ('Betsy Chatenier', 9);
    insert into player (nome, team_codigo) values ('Gunner Roycraft', 9);
    insert into player (nome, team_codigo) values ('Bondy Tarbath', 10);
    insert into player (nome, team_codigo) values ('Rabi Cheers', 10);
    insert into player (nome, team_codigo) values ('Kendell Wingfield', 10);
    insert into player (nome, team_codigo) values ('Clarance Crake', 10);
    insert into player (nome, team_codigo) values ('Ree Fennelow', 10);
    insert into player (nome, team_codigo) values ('Gretta Milroy', 10);
    insert into player (nome, team_codigo) values ('Luelle Bossons', 10);
    insert into player (nome, team_codigo) values ('Alethea Debling', 10);
    insert into player (nome, team_codigo) values ('Klaus Dorbirn', 10);
    insert into player (nome, team_codigo) values ('Cherie Prater', 10);

--INSERTS DOS JOGOS
    insert into game (team1, team2, dataHora) values (1, 2, '2019-11-23 20:30');    
    insert into game (team1, team2, dataHora) values (3, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (7, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (9, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (1, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (6, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 9, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (2, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 3, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (8, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (6, 7, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (1, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (7, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (6, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 7, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (3, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 8, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (7, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 8, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (6, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 7, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (8, 10, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 7, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (2, 3, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 9, '2019-11-23 20:30');

    

-- INSERTS JOGOJOGADOR

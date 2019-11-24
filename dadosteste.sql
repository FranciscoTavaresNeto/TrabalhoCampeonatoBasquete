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
    insert into player (nome, team) values ('Eolande Gebhard', 1);
    insert into player (nome, team) values ('Orel Vallance', 1);
    insert into player (nome, team) values ('Jacques Westwell', 1);
    insert into player (nome, team) values ('Roby Spur', 1);
    insert into player (nome, team) values ('Sky Samudio', 1);
    insert into player (nome, team) values ('Phillip Penvarne', 1);
    insert into player (nome, team) values ('Loralie Tesyro', 1);
    insert into player (nome, team) values ('Jeni Kent', 1);
    insert into player (nome, team) values ('Donnamarie Pipworth', 1);
    insert into player (nome, team) values ('Peder Sach', 1);
    insert into player (nome, team) values ('Beth Offa', 2);
    insert into player (nome, team) values ('Nikki Wellen', 2);
    insert into player (nome, team) values ('Candie Stuchberry', 2);
    insert into player (nome, team) values ('Elysha Squibbes', 2);
    insert into player (nome, team) values ('Sanders MacNalley', 2);
    insert into player (nome, team) values ('Gilles Hamblyn', 2);
    insert into player (nome, team) values ('Waldo Lunbech', 2);
    insert into player (nome, team) values ('Pavel Kerbey', 2);
    insert into player (nome, team) values ('Maggy Hartburn', 2);
    insert into player (nome, team) values ('Filippa Cahani', 2);
    insert into player (nome, team) values ('Whitney Poluzzi', 3);
    insert into player (nome, team) values ('Raeann Huetson', 3);
    insert into player (nome, team) values ('Peggi Poppy', 3);
    insert into player (nome, team) values ('Yancy Cannaway', 3);
    insert into player (nome, team) values ('Warner Ingarfield', 3);
    insert into player (nome, team) values ('Gerhard Ullock', 3);
    insert into player (nome, team) values ('Donielle Rilston', 3);
    insert into player (nome, team) values ('Charity Kersting', 3);
    insert into player (nome, team) values ('Caresse Scantlebury', 3);
    insert into player (nome, team) values ('Rosalinde Craigg', 3);
    insert into player (nome, team) values ('Rayna Nurdin', 4);
    insert into player (nome, team) values ('Ashia Jehaes', 4);
    insert into player (nome, team) values ('Hymie Renouf', 4);
    insert into player (nome, team) values ('Lew Somerfield', 4);
    insert into player (nome, team) values ('Tomasina Attewell', 4);
    insert into player (nome, team) values ('Loretta Stoltz', 4);
    insert into player (nome, team) values ('Bill Tatham', 4);
    insert into player (nome, team) values ('Gerrard Pavinese', 4);
    insert into player (nome, team) values ('Joleen Heinrich', 4);
    insert into player (nome, team) values ('Katalin Joddens', 4);
    insert into player (nome, team) values ('Andeee Outhwaite', 5);
    insert into player (nome, team) values ('Grover Storek', 5);
    insert into player (nome, team) values ('Sharline Fenelow', 5);
    insert into player (nome, team) values ('Gare Balmann', 5);
    insert into player (nome, team) values ('Aubrey Shotter', 5);
    insert into player (nome, team) values ('Corrine Selbie', 5);
    insert into player (nome, team) values ('Winny Soots', 5);
    insert into player (nome, team) values ('Jan Craddy', 5);
    insert into player (nome, team) values ('Patin Kinnett', 5);
    insert into player (nome, team) values ('Kassi Redhouse', 5);
    insert into player (nome, team) values ('Mag McGilbon', 6);
    insert into player (nome, team) values ('Arlen McKinie', 6);
    insert into player (nome, team) values ('Wilfrid Chedzoy', 6);
    insert into player (nome, team) values ('Ignazio Curless', 6);
    insert into player (nome, team) values ('Morena Piddlesden', 6);
    insert into player (nome, team) values ('Reinhard Bogges', 6);
    insert into player (nome, team) values ('Adela Jervoise', 6);
    insert into player (nome, team) values ('Giff McDonnell', 6);
    insert into player (nome, team) values ('Urbano Perrie', 6);
    insert into player (nome, team) values ('Arlan Greedier', 6);
    insert into player (nome, team) values ('Ulla Shotter', 7);
    insert into player (nome, team) values ('Bonnibelle Stembridge', 7);
    insert into player (nome, team) values ('Alfred Labro', 7);
    insert into player (nome, team) values ('Mikol McPhillips', 7);
    insert into player (nome, team) values ('Dreddy Bayle', 7);
    insert into player (nome, team) values ('Abby Gniewosz', 7);
    insert into player (nome, team) values ('Isabelle Brownsmith', 7);
    insert into player (nome, team) values ('Rosalia Thickins', 7);
    insert into player (nome, team) values ('Rene Digg', 7);
    insert into player (nome, team) values ('Barret Odger', 7);
    insert into player (nome, team) values ('Winn Peckett', 8);
    insert into player (nome, team) values ('Sarajane Tregunna', 8);
    insert into player (nome, team) values ('Harland MacCarrick', 8);
    insert into player (nome, team) values ('Sauveur Lornsen', 8);
    insert into player (nome, team) values ('Willem Batteson', 8);
    insert into player (nome, team) values ('Carlen Lumber', 8);
    insert into player (nome, team) values ('Helene Silmon', 8);
    insert into player (nome, team) values ('Mendie Courcey', 8);
    insert into player (nome, team) values ('Verile Chanter', 8);
    insert into player (nome, team) values ('Denny Brocking', 8);
    insert into player (nome, team) values ('Cassandry Lillyman', 9);
    insert into player (nome, team) values ('Eden Jaxon', 9);
    insert into player (nome, team) values ('Franz Broxton', 9);
    insert into player (nome, team) values ('Lorene Nealey', 9);
    insert into player (nome, team) values ('Garey Veel', 9);
    insert into player (nome, team) values ('Rafferty Hawket', 9);
    insert into player (nome, team) values ('Augy Chaplain', 9);
    insert into player (nome, team) values ('Iorgo Adamowicz', 9);
    insert into player (nome, team) values ('Betsy Chatenier', 9);
    insert into player (nome, team) values ('Gunner Roycraft', 9);
    insert into player (nome, team) values ('Bondy Tarbath', 10);
    insert into player (nome, team) values ('Rabi Cheers', 10);
    insert into player (nome, team) values ('Kendell Wingfield', 10);
    insert into player (nome, team) values ('Clarance Crake', 10);
    insert into player (nome, team) values ('Ree Fennelow', 10);
    insert into player (nome, team) values ('Gretta Milroy', 10);
    insert into player (nome, team) values ('Luelle Bossons', 10);
    insert into player (nome, team) values ('Alethea Debling', 10);
    insert into player (nome, team) values ('Klaus Dorbirn', 10);
    insert into player (nome, team) values ('Cherie Prater', 10);

--INSERTS DOS JOGOS
    insert into game (team1, team2, dataHora) values (1, 2, '2019-11-23 20:30');    
    insert into game (team1, team2, dataHora) values (1, 3, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (1, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (2, 3, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (2, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (3, 4, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (3, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (4, 5, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (4, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (5, 6, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (5, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (6, 7, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (6, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (6, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (6, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (7, 8, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (7, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (7, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (8, 9, '2019-11-23 20:30');
    insert into game (team1, team2, dataHora) values (8, 10, '2019-11-23 20:30');
    
    insert into game (team1, team2, dataHora) values (9, 10, '2019-11-23 20:30');

-- INSERTS JOGOJOGADOR

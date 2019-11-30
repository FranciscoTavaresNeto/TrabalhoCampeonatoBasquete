/*
    COMPILADÃO DE DADOS GENÉRICOS PRA TESTAR OS SELECTS
*/
create table Time
(
    codigo serial not null,
    nome varchar(100) not null,
    primary key(codigo)
);
create table Jogador
(
    codigo serial not null,
    nome varchar(50) not null,
    Time int references Time(codigo),
    primary key(codigo)
);
create table Jogo
(
    codigo serial not null,
    Time1 int references Time(codigo),
    Time2 int references Time(codigo),
    dataHora timestamp not null,
    primary key(codigo)
);
create table JogoJogador
(
    Jogo int references Jogo(codigo),
    Jogador int references Jogador(codigo),
    cestas2 int not null,
    cestas3 int not null,
    lancesLivres int not null,
    primary key(Jogo, Jogador)
);


--INSERTS DOS TIMES
    insert into Time (nome) values ('MOSQUETEIRO AZUL');
    insert into Time (nome) values ('SACI VERMELHO');
    insert into Time (nome) values ('DETROIT PISTONS');
    insert into Time (nome) values ('PORTLAND TRAILBLAZERS');
    insert into Time (nome) values ('LOS ANGELES LAKERS');
    insert into Time (nome) values ('BOSTON CELTICS');
    insert into Time (nome) values ('NEW YORK KNICKS');
    insert into Time (nome) values ('TORONTO RAPTORS');
    insert into Time (nome) values ('CHICAGO BULLS');
    insert into Time (nome) values ('MIAMI HEAT');
--INSERTS DOS JOGADORES
    insert into Jogador (nome, Time) values ('Joao Palito', 1);
    insert into Jogador (nome, Time) values ('Pedro Cestinha', 1);
    insert into Jogador (nome, Time) values ('Jacques Westwell', 1);
    insert into Jogador (nome, Time) values ('Roby Spur', 1);
    insert into Jogador (nome, Time) values ('Sky Samudio', 1);
    insert into Jogador (nome, Time) values ('Phillip Penvarne', 1);
    insert into Jogador (nome, Time) values ('Loralie Tesyro', 1);
    insert into Jogador (nome, Time) values ('Jeni Kent', 1);
    insert into Jogador (nome, Time) values ('Donnamarie Pipworth', 1);
    insert into Jogador (nome, Time) values ('Peder Sach', 1);
    insert into Jogador (nome, Time) values ('Beth Offa', 2);
    insert into Jogador (nome, Time) values ('Nikki Wellen', 2);
    insert into Jogador (nome, Time) values ('Candie Stuchberry', 2);
    insert into Jogador (nome, Time) values ('Elysha Squibbes', 2);
    insert into Jogador (nome, Time) values ('Sanders MacNalley', 2);
    insert into Jogador (nome, Time) values ('Gilles Hamblyn', 2);
    insert into Jogador (nome, Time) values ('Waldo Lunbech', 2);
    insert into Jogador (nome, Time) values ('Pavel Kerbey', 2);
    insert into Jogador (nome, Time) values ('Maggy Hartburn', 2);
    insert into Jogador (nome, Time) values ('Filippa Cahani', 2);
    insert into Jogador (nome, Time) values ('Whitney Poluzzi', 3);
    insert into Jogador (nome, Time) values ('Raeann Huetson', 3);
    insert into Jogador (nome, Time) values ('Peggi Poppy', 3);
    insert into Jogador (nome, Time) values ('Yancy Cannaway', 3);
    insert into Jogador (nome, Time) values ('Warner Ingarfield', 3);
    insert into Jogador (nome, Time) values ('Gerhard Ullock', 3);
    insert into Jogador (nome, Time) values ('Donielle Rilston', 3);
    insert into Jogador (nome, Time) values ('Charity Kersting', 3);
    insert into Jogador (nome, Time) values ('Caresse Scantlebury', 3);
    insert into Jogador (nome, Time) values ('Rosalinde Craigg', 3);
    insert into Jogador (nome, Time) values ('Rayna Nurdin', 4);
    insert into Jogador (nome, Time) values ('Ashia Jehaes', 4);
    insert into Jogador (nome, Time) values ('Hymie Renouf', 4);
    insert into Jogador (nome, Time) values ('Lew Somerfield', 4);
    insert into Jogador (nome, Time) values ('Tomasina Attewell', 4);
    insert into Jogador (nome, Time) values ('Loretta Stoltz', 4);
    insert into Jogador (nome, Time) values ('Bill Tatham', 4);
    insert into Jogador (nome, Time) values ('Gerrard Pavinese', 4);
    insert into Jogador (nome, Time) values ('Joleen Heinrich', 4);
    insert into Jogador (nome, Time) values ('Katalin Joddens', 4);
    insert into Jogador (nome, Time) values ('Andeee Outhwaite', 5);
    insert into Jogador (nome, Time) values ('Grover Storek', 5);
    insert into Jogador (nome, Time) values ('Sharline Fenelow', 5);
    insert into Jogador (nome, Time) values ('Gare Balmann', 5);
    insert into Jogador (nome, Time) values ('Aubrey Shotter', 5);
    insert into Jogador (nome, Time) values ('Corrine Selbie', 5);
    insert into Jogador (nome, Time) values ('Winny Soots', 5);
    insert into Jogador (nome, Time) values ('Jan Craddy', 5);
    insert into Jogador (nome, Time) values ('Patin Kinnett', 5);
    insert into Jogador (nome, Time) values ('Kassi Redhouse', 5);
    insert into Jogador (nome, Time) values ('Mag McGilbon', 6);
    insert into Jogador (nome, Time) values ('Arlen McKinie', 6);
    insert into Jogador (nome, Time) values ('Wilfrid Chedzoy', 6);
    insert into Jogador (nome, Time) values ('Ignazio Curless', 6);
    insert into Jogador (nome, Time) values ('Morena Piddlesden', 6);
    insert into Jogador (nome, Time) values ('Reinhard Bogges', 6);
    insert into Jogador (nome, Time) values ('Adela Jervoise', 6);
    insert into Jogador (nome, Time) values ('Giff McDonnell', 6);
    insert into Jogador (nome, Time) values ('Urbano Perrie', 6);
    insert into Jogador (nome, Time) values ('Arlan Greedier', 6);
    insert into Jogador (nome, Time) values ('Ulla Shotter', 7);
    insert into Jogador (nome, Time) values ('Bonnibelle Stembridge', 7);
    insert into Jogador (nome, Time) values ('Alfred Labro', 7);
    insert into Jogador (nome, Time) values ('Mikol McPhillips', 7);
    insert into Jogador (nome, Time) values ('Dreddy Bayle', 7);
    insert into Jogador (nome, Time) values ('Abby Gniewosz', 7);
    insert into Jogador (nome, Time) values ('Isabelle Brownsmith', 7);
    insert into Jogador (nome, Time) values ('Rosalia Thickins', 7);
    insert into Jogador (nome, Time) values ('Rene Digg', 7);
    insert into Jogador (nome, Time) values ('Barret Odger', 7);
    insert into Jogador (nome, Time) values ('Winn Peckett', 8);
    insert into Jogador (nome, Time) values ('Sarajane Tregunna', 8);
    insert into Jogador (nome, Time) values ('Harland MacCarrick', 8);
    insert into Jogador (nome, Time) values ('Sauveur Lornsen', 8);
    insert into Jogador (nome, Time) values ('Willem Batteson', 8);
    insert into Jogador (nome, Time) values ('Carlen Lumber', 8);
    insert into Jogador (nome, Time) values ('Helene Silmon', 8);
    insert into Jogador (nome, Time) values ('Mendie Courcey', 8);
    insert into Jogador (nome, Time) values ('Verile Chanter', 8);
    insert into Jogador (nome, Time) values ('Denny Brocking', 8);
    insert into Jogador (nome, Time) values ('Cassandry Lillyman', 9);
    insert into Jogador (nome, Time) values ('Eden Jaxon', 9);
    insert into Jogador (nome, Time) values ('Franz Broxton', 9);
    insert into Jogador (nome, Time) values ('Lorene Nealey', 9);
    insert into Jogador (nome, Time) values ('Garey Veel', 9);
    insert into Jogador (nome, Time) values ('Rafferty Hawket', 9);
    insert into Jogador (nome, Time) values ('Augy Chaplain', 9);
    insert into Jogador (nome, Time) values ('Iorgo Adamowicz', 9);
    insert into Jogador (nome, Time) values ('Betsy Chatenier', 9);
    insert into Jogador (nome, Time) values ('Gunner Roycraft', 9);
    insert into Jogador (nome, Time) values ('Bondy Tarbath', 10);
    insert into Jogador (nome, Time) values ('Rabi Cheers', 10);
    insert into Jogador (nome, Time) values ('Kendell Wingfield', 10);
    insert into Jogador (nome, Time) values ('Clarance Crake', 10);
    insert into Jogador (nome, Time) values ('Ree Fennelow', 10);
    insert into Jogador (nome, Time) values ('Gretta Milroy', 10);
    insert into Jogador (nome, Time) values ('Luelle Bossons', 10);
    insert into Jogador (nome, Time) values ('Alethea Debling', 10);
    insert into Jogador (nome, Time) values ('Klaus Dorbirn', 10);
    insert into Jogador (nome, Time) values ('Cherie Prater', 10);

--INSERTS DOS JOGOS
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 10, '2019-11-2 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 9, '2019-11-2 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 8, '2019-11-2 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 7, '2019-11-2 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (5, 6, '2019-11-3 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 9, '2019-11-09 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (8, 10, '2019-11-09 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 7, '2019-11-09 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 6, '2019-11-09 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 5, '2019-11-10 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 8, '2019-11-16 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (7, 9, '2019-11-16 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (6, 10, '2019-11-16 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 5, '2019-11-16 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 4, '2019-11-17 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 7, '2019-11-23 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (6, 8, '2019-11-23 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (5, 9, '2019-11-23 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 10, '2019-11-23 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 3, '2019-11-24 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 6, '2019-11-30 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (5, 7, '2019-11-30 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 8, '2019-11-30 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 9, '2019-11-30 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 10, '2019-12-01 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 5, '2019-12-07 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 6, '2019-12-07 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 7, '2019-12-07 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 8, '2019-12-07 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (9, 10, '2019-12-08 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 4, '2019-12-14 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (3, 5, '2019-12-14 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 6, '2019-12-14 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (7, 10, '2019-12-14 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (8, 9, '2019-12-15 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 3, '2019-12-21 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (2, 4, '2019-12-21 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (5, 10, '2019-12-21 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (6, 9, '2019-12-21 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (7, 8, '2019-12-22 20:30');
    
    insert into Jogo (Time1, Time2, dataHora) values (1, 2, '2019-12-28 20:30');    
    insert into Jogo (Time1, Time2, dataHora) values (3, 10, '2019-12-28 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (4, 9, '2019-12-28 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (5, 8, '2019-12-28 20:30');
    insert into Jogo (Time1, Time2, dataHora) values (6, 7, '2019-12-29 20:30');
    
-- INSERTS JOGOJOGADOR
    
    --JOGO 1
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 10, 4, 3, 13);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (1, 100, 2, 4, 13);
    --JOGO 2
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 20, 4, 16, 13);    
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (2, 90, 9, 2, 12);
    --JOGO 3
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 30, 14, 1, 2);    
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (3, 80, 1, 14, 4);
    --JOGO 4
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 40, 1, 14, 4);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (4, 70, 14, 1, 2);
    --JOGO 5
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 50, 14, 1, 2);
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (5, 60, 14, 1, 2);
    --JOGO 6
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 10, 4, 3, 13);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (6, 90, 9, 2, 12);
    --JOGO 7
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 80, 1, 14, 4);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (7, 100, 2, 4, 13);
    --JOGO 8
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 20, 4, 16, 13);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (8, 70, 14, 1, 2);
    --JOGO 9
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 30, 14, 1, 2);
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (9, 60, 14, 1, 2);
    --JOGO 10
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 40, 1, 14, 4);
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (10, 50, 14, 1, 2);
    --JOGO 11
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 10, 4, 3, 13);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (11, 80, 1, 14, 4);
    --JOGO 12
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 70, 14, 1, 2);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (12, 90, 9, 2, 12);
    --JOGO 13
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 60, 14, 1, 2);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (13, 100, 2, 4, 13);
    --JOGO 14
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 20, 4, 16, 13);
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (14, 50, 14, 1, 2);
    --JOGO 15
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 30, 14, 1, 2);
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (15, 40, 1, 14, 4);
    --JOGO 16
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 10, 4, 3, 13);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (16, 70, 14, 1, 2);
    --JOGO 17
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 60, 14, 1, 2);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (17, 80, 1, 14, 4);
    --JOGO 18
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 50, 14, 1, 2);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (18, 90, 9, 2, 12);
    --JOGO 19
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 40, 1, 14, 4);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (19, 100, 2, 4, 13);
    --JOGO 20
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 20, 4, 16, 13);
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (20, 30, 14, 1, 2);
    --JOGO 21
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 10, 4, 3, 13);
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (21, 60, 14, 1, 2);
    --JOGO 22
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 50, 14, 1, 2);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (22, 70, 14, 1, 2);
    --JOGO 23
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 40, 1, 14, 4);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (23, 80, 1, 14, 4);
    --JOGO 24
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 30, 14, 1, 2);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (24, 90, 9, 2, 12);
    --JOGO 25
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 20, 4, 16, 13);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (25, 100, 2, 4, 13);
    --JOGO 26
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 10, 4, 3, 13);
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (26, 50, 14, 1, 2);
    --JOGO 27
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 40, 1, 14, 4);
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (27, 60, 14, 1, 2);
    --JOGO 28
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 30, 14, 1, 2);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (28, 70, 14, 1, 2);
    --JOGO 29
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 20, 4, 16, 13);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (29, 80, 1, 14, 4);
    --JOGO 30
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 90, 9, 2, 12);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (30, 100, 2, 4, 13);
    --JOGO 31
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 10, 4, 3, 13);
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (31, 40, 1, 14, 4);
    --JOGO 32
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 30, 14, 1, 2);
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (32, 50, 14, 1, 2);
    --JOGO 33
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 20, 4, 16, 13);
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (33, 60, 14, 1, 2);
    --JOGO 34
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 70, 14, 1, 2);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (34, 100, 2, 4, 13);
    --JOGO 35
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 80, 1, 14, 4);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (35, 90, 9, 2, 12);
    --JOGO 36
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 10, 4, 3, 13);
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (36, 30, 14, 1, 2);
    --JOGO 37
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 20, 4, 16, 13);
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (37, 40, 1, 14, 4);
    --JOGO 38
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 50, 14, 1, 2);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (38, 100, 2, 4, 13);
    --JOGO 39
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 60, 14, 1, 2); 
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (39, 90, 9, 2, 12);
    --JOGO 40
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 70, 14, 1, 2);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (40, 80, 1, 14, 4);
    --JOGO 41
    --TIME 1
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 1, 20, 8, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 2, 4, 14, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 3, 19, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 4, 9, 13, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 5, 8, 6, 13);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 6, 18, 17, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 7, 2, 18, 7);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 8, 11, 16, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 9, 4, 6, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 10, 4, 3, 13);
    --TIME 2
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 11, 18, 16, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 12, 6, 11, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 13, 8, 18, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 14, 20, 3, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 15, 18, 9, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 16, 12, 14, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 17, 10, 1, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 18, 3, 14, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 19, 11, 11, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (41, 20, 4, 16, 13);
    --JOGO 42
    --TIME 3
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 21, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 22, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 23, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 24, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 25, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 26, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 27, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 28, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 29, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 30, 14, 1, 2);
    --TIME 10
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 91, 18, 17, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 92, 12, 12, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 93, 16, 8, 8);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 94, 10, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 95, 2, 17, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 96, 5, 3, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 97, 12, 5, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 98, 19, 9, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 99, 19, 7, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (42, 100, 2, 4, 13);
    --JOGO 43
    --TIME 4
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 31, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 32, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 33, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 34, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 35, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 36, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 37, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 38, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 39, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 40, 1, 14, 4);
    --TIME 9
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 81, 19, 1, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 82, 14, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 83, 3, 5, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 84, 9, 12, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 85, 11, 10, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 86, 10, 17, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 87, 6, 14, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 88, 17, 16, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 89, 13, 3, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (43, 90, 9, 2, 12);
    --JOGO 44
    --TIME 5
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 41, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 42, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 43, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 44, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 45, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 46, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 47, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 48, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 49, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 50, 14, 1, 2);
    --TIME 8
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 71, 19, 17, 2);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 72, 14, 10, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 73, 10, 14, 9);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 74, 2, 2, 4);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 75, 13, 14, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 76, 6, 7, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 77, 2, 2, 10);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 78, 13, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 79, 10, 8, 12);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (44, 80, 1, 14, 4);
    --JOGO 45
    --TIME 6
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 51, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 52, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 53, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 54, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 55, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 56, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 57, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 58, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 59, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 60, 14, 1, 2);
    --TIME 7
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 61, 6, 1, 14);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 62, 5, 7, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 63, 12, 16, 3);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 64, 4, 17, 5);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 65, 11, 5, 6);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 66, 4, 10, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 67, 5, 2, 1);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 68, 1, 2, 11);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 69, 8, 19, 15);
    insert into JogoJogador (Jogo, Jogador, cestas2, cestas3, lanceslivres) values (45, 70, 14, 1, 2);
INSERT INTO Developer (developer)
VALUES('id Software');
INSERT INTO Developer (developer)
VALUES('PUBG Corporation');
INSERT INTO Developer (developer)
VALUES('Harebrained Schemes');
INSERT INTO Developer (developer)
VALUES('Bohemia Interactive');
INSERT INTO Developer (developer)
VALUES('CCP');

INSERT INTO Developer_Genre (developer, genre)
VALUES('id Software', 'Action');
INSERT INTO Developer_Genre (developer, genre)
VALUES('PUBG Corporation', 'Action');
INSERT INTO Developer_Genre (developer, genre)
VALUES('PUBG Corporation', 'Adventure');
INSERT INTO Developer_Genre (developer, genre)
VALUES('PUBG Corporation', 'Massively Multiplayer');
INSERT INTO Developer_Genre (developer, genre)
VALUES('Harebrained Schemes', 'Action');
INSERT INTO Developer_Genre (developer, genre)
VALUES('Harebrained Schemes', 'Adventure');
INSERT INTO Developer_Genre (developer, genre)
VALUES('Harebrained Schemes', 'Strategy');


INSERT INTO Developer_Genre (developer, genre)
VALUES('Bohemia Interactive', 'Action');
INSERT INTO Developer_Genre (developer, genre)
VALUES('Bohemia Interactive', 'Adventure');
INSERT INTO Developer_Genre (developer, genre)
VALUES('Bohemia Interactive', 'Massively Multiplayer');
INSERT INTO Developer_Genre (developer, genre)
VALUES('CCP', 'Action');
INSERT INTO Developer_Genre (developer, genre)
VALUES('CCP', 'Free to Play');
INSERT INTO Developer_Genre (developer, genre)
VALUES('CCP', 'Massively Multiplayer');
INSERT INTO Developer_Genre (developer, genre)
VALUES('CCP', 'RPG');
INSERT INTO Developer_Genre (developer, genre)
VALUES('CCP', 'Strategy');

INSERT INTO Developer_Game (developer, game, publisher)
VALUES('id Software', 'DOOM', 'Bethesda Softworks');
INSERT INTO Developer_Game (developer, game)
VALUES('PUBG Corporation', 'PLAYERUNKNOWNS BATTLEGROUNDS');
INSERT INTO Developer_Game (developer, game)
VALUES('Harebrained Schemes', 'BATTLETECH');
INSERT INTO Developer_Game (developer, game)
VALUES('Bohemia Interactive', 'DayZ');
INSERT INTO Developer_Game (developer, game)
VALUES('CCP', 'EVE Online	');

INSERT INTO Game_title (game)
VALUES('DOOM');
INSERT INTO Game_title (game)
VALUES('PLAYERUNKNOWNS BATTLEGROUNDS	');
INSERT INTO Game_title (game)
VALUES('DayZ');
INSERT INTO Game_title (game)
VALUES('BATTLETECH');
INSERT INTO Game_title (game)
VALUES('EVE Online');


INSERT INTO Review (review)
VALUES('Very Positive');
INSERT INTO Review (review)
VALUES('Mixed');
INSERT INTO Review (review)
VALUES('Mostly Positive');

INSERT INTO R_year (r_year)
VALUES(2003);
INSERT INTO R_year (r_year)
VALUES(2016);
INSERT INTO R_year (r_year)
VALUES(2017);
INSERT INTO R_year (r_year)
VALUES(2018);

INSERT INTO Game (price, game, r_year, review)
VALUES(19.99,'DOOM','2016','Very Positive');
INSERT INTO Game (price, game, r_year, review)
VALUES(29.99,'PLAYERUNKNOWNS BATTLEGROUNDS','2017','Mixed');
INSERT INTO Game (price, game, r_year, review)
VALUES(39.99,'BATTLETECH','2018','Mostly Positive');
INSERT INTO Game (price, game, r_year, review)
VALUES(44.99,'DayZ','2018','Mixed');
INSERT INTO Game (price, game, r_year, review)
VALUES(0,'EVE Online','2003','Mostly Positive,');

  

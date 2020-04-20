CREATE TABLE Developer
(
developer char(64)
);

ALTER TABLE Developer
ADD CONSTRAINT developer_pk PRIMARY KEY (developer);


CREATE TABLE Developer_Genre
(
developer char(64),
genre char(64)
);

ALTER TABLE Developer_Genre
ADD CONSTRAINT developer_genre_pk PRIMARY KEY (developer, genre);

ALTER TABLE Developer_Genre
ADD CONSTRAINT Developer_Genre_Developer_fk
 FOREIGN KEY (developer)
 REFERENCES Developer (developer);

CREATE TABLE Developer_Game
(
developer char(64),
game char(64),
publisher char(64)
);

ALTER TABLE Developer_Game
ADD CONSTRAINT developer_game_pk PRIMARY KEY (developer, game);

ALTER TABLE Developer_Game
ADD CONSTRAINT Developer_Game_Developer_fk
 FOREIGN KEY (developer)
 REFERENCES Developer (developer);
 
ALTER TABLE Developer_Game
ADD CONSTRAINT Developer_Game_Game_fk
 FOREIGN KEY (game)
 REFERENCES Game_title (game);

 
CREATE TABLE Review
(
review char(64)
);

ALTER TABLE Review
ADD CONSTRAINT review_pk PRIMARY KEY (review);


CREATE TABLE R_year
(
r_year integer
);

ALTER TABLE R_year
ADD CONSTRAINT ryear_pk PRIMARY KEY (r_year);


CREATE TABLE Game_title
(
game char(64)
);

ALTER TABLE Game_title
ADD CONSTRAINT game_title_pk PRIMARY KEY (game);



CREATE TABLE GAME
(
price float,
game char(64),
r_year integer,
review char(64)
);

ALTER TABLE Game
ADD CONSTRAINT game_pk PRIMARY KEY (game);

ALTER TABLE Game
ADD CONSTRAINT Game_Game_title_fk
 FOREIGN KEY (game)
 REFERENCES Game_title (game);

ALTER TABLE Game
ADD CONSTRAINT Game_Review_fk
 FOREIGN KEY (review)
 REFERENCES Review (review);
 
ALTER TABLE Game
ADD CONSTRAINT Game_Ryear_fk
 FOREIGN KEY (r_year)
 REFERENCES R_year (r_year);
 
 



  

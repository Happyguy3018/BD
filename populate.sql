INSERT INTO dim_developer_sf(developer)
VALUES('id Software');

INSERT INTO dim_publisher_sf(publisher)
VALUES('Bethesda Softworks');

INSERT INTO dim_genre_sf(genre)
VALUES('Action');

INSERT INTO dim_game_sf(game, genre, publisher, developer)
VALUES('DOOM', 'Action', 'Bethesda Softworks', 'id Software');


INSERT INTO dim_all_review_sf(all_review)
VALUES('Very Positive');

INSERT INTO dim_year_sf (release_year)
VALUES (2016)

INSERT INTO fact_game_sale(original_price, game, release_year, all_review)
VALUES(19.99, 'DOOM', 2016,'Very Positive');

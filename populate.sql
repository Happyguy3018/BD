INSERT INTO dim_developer_sf(developer_id, developer)
VALUES(1, 'id Software');

INSERT INTO dim_publisher_sf(publisher_id, publisher)
VALUES(1, 'Bethesda Softworks');

INSERT INTO dim_genre_sf(genre_id, genre)
VALUES(1, 'Action');

INSERT INTO dim_game_sf(game_id, game_name, genre_id, publisher_id, developer_id)
VALUES(1, 'DOOM', 1, 1, 1);


INSERT INTO dim_all_review_sf(all_review_id, all_review)
VALUES(1, 'Very Positive');

INSERT INTO dim_release_sf(release_id, day, month_id)
VALUES(1, 12, 1);

INSERT INTO dim_month_sf(month_id, month, year_id)
VALUES(1, 'May', 1);

INSERT INTO dim_year_sf(year_id, year)
VALUES(1, 2016);


INSERT INTO fact_game_sale(original_price, game_id, release_id, all_review_id)
VALUES(19.99, 1, 1, 1);




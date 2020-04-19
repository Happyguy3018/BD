
CREATE TABLE dim_publisher_sf
(
publisher char(100)
);

ALTER TABLE dim_publisher_sf
ADD CONSTRAINT publisher_pk PRIMARY KEY (publisher);

-- 

CREATE TABLE dim_genre_sf
(
genre char(100)
);

ALTER TABLE dim_genre_sf
ADD CONSTRAINT genre_pk PRIMARY KEY (genre);

-- 
CREATE TABLE dim_developer_sf
(
developer char(100)
);

ALTER TABLE dim_developer_sf
ADD CONSTRAINT developer_pk PRIMARY KEY (developer);

--


CREATE TABLE dim_game_sf
(

game char(100),
genre char(100),
publisher char(100),
developer char(100)
);

ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_pk PRIMARY KEY (game);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_genre_fk
  FOREIGN KEY (genre)
  REFERENCES dim_genre_sf (genre);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_developer_fk
  FOREIGN KEY (developer)
  REFERENCES dim_developer_sf (developer);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_publisher_fk
  FOREIGN KEY (publisher)
  REFERENCES dim_publisher_sf (publisher);
-- 


CREATE TABLE dim_year_sf
(
release_year integer
);

ALTER TABLE dim_year_sf
ADD CONSTRAINT year_pk PRIMARY KEY (release_year);
--


CREATE TABLE dim_all_review_sf
(
all_review char(100)
);

ALTER TABLE dim_all_review_sf
ADD CONSTRAINT all_review_pk PRIMARY KEY (all_review);
--


CREATE TABLE fact_game_sale
(
original_price float,
game char(100),
release_year integer,
all_review char(100)
);

ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_pk PRIMARY KEY (game);

ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_all_review_fk
  FOREIGN KEY (all_review)
  REFERENCES dim_all_review_sf (all_review);
  
ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_release_fk
  FOREIGN KEY (release)
  REFERENCES dim_release_sf (release);

ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_game_fk
  FOREIGN KEY (game)
  REFERENCES dim_game_sf (game);

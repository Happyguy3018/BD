CREATE TABLE dim_publisher_sf
(
publisher_id integer,
publisher char(100)
);

ALTER TABLE dim_publisher_sf
ADD CONSTRAINT publisher_pk PRIMARY KEY (publisher_id);

-- 

CREATE TABLE dim_genre_sf
(
genre_id integer,
genre char(100)
);

ALTER TABLE dim_genre_sf
ADD CONSTRAINT genre_pk PRIMARY KEY (genre_id);

-- 
CREATE TABLE dim_developer_sf
(
developer_id integer,
developer char(100)
);

ALTER TABLE dim_developer_sf
ADD CONSTRAINT developer_pk PRIMARY KEY (developer_id);

--


CREATE TABLE dim_game_sf
(
game_id integer,
game_name char(100),
genre_id integer,
publisher_id integer,
developer_id integer
);

ALTER TABLE dim_game_sf
ADD CONSTRAINT game_pk PRIMARY KEY (game_id);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_genre_fk
  FOREIGN KEY (genre_id)
  REFERENCES dim_genre_sf (genre_id);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_developer_fk
  FOREIGN KEY (developer_id)
  REFERENCES dim_developer_sf (developer_id);
  
  
ALTER TABLE dim_game_sf
ADD CONSTRAINT dim_game_sf_publisher_fk
  FOREIGN KEY (publisher_id)
  REFERENCES dim_publisher_sf (publisher_id);
-- 


CREATE TABLE dim_year_sf
(
year_id integer,
year integer
);

ALTER TABLE dim_year_sf
ADD CONSTRAINT year_pk PRIMARY KEY (year_id);
--


CREATE TABLE dim_month_sf
(
month_id integer,
month char(9),
year_id integer
);

ALTER TABLE dim_month_sf
ADD CONSTRAINT month_pk PRIMARY KEY (month_id);

ALTER TABLE dim_month_sf
ADD CONSTRAINT dim_month_sf_year_fk
  FOREIGN KEY (year_id)
  REFERENCES dim_year_sf (year_id);
--


CREATE TABLE dim_release_sf
(
release_id integer,
day integer,
month_id integer
);

ALTER TABLE dim_release_sf
ADD CONSTRAINT release_pk PRIMARY KEY (release_id);

ALTER TABLE dim_release_sf
ADD CONSTRAINT dim_release_sf_month_fk
  FOREIGN KEY (month_id)
  REFERENCES dim_month_sf (month_id);
--


CREATE TABLE dim_all_review_sf
(
all_review_id integer,
all_review char(40)
);

ALTER TABLE dim_all_review_sf
ADD CONSTRAINT all_review_pk PRIMARY KEY (all_review_id);
--


CREATE TABLE fact_game_sale
(
original_price integer,
game_id integer,
release_id integer,
all_review_id integer
);

ALTER TABLE fact_game_sale
ADD CONSTRAINT game_id_pk PRIMARY KEY (game_id);

ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_all_review_fk
  FOREIGN KEY (all_review_id)
  REFERENCES dim_all_review_sf (all_review_id);
  
ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_release_fk
  FOREIGN KEY (release_id)
  REFERENCES dim_release_sf (release_id);

ALTER TABLE fact_game_sale
ADD CONSTRAINT fact_game_sale_game_fk
  FOREIGN KEY (game_id)
  REFERENCES dim_game_sf (game_id);


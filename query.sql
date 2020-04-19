-- Запит 1: Вивести кількість ігор випущених за кожен рік.
-- Роки - кількість ігор.
select count(fact_game_sale.original_price), year 
from fact_game_sale 
 INNER JOIN dim_release_sf
 ON fact_game_sale.release_id = dim_release_sf.release_id
 INNER JOIN dim_month_sf
 ON dim_month_sf.month_id = dim_release_sf.month_id
 INNER JOIN dim_year_sf
 ON dim_month_sf.year_id = dim_year_sf.year_id
 GROUP BY year;


-- Вивести відсоткову залежність кількості ігор одного жанру відносно інших.
select count(dim_game_sf.game_id), genre
 from dim_game_sf
 INNER JOIN dim_genre_sf
 ON dim_genre_sf.genre_id = dim_game_sf.genre_id
 GROUP BY dim_genre_sf.genre;

--Динаміка кільксості ігор жанру "стратегії" по роках
select year
from fact_game_sale 
     INNER JOIN dim_release_sf
     ON fact_game_sale.release_id = dim_release_sf.release_id
     INNER JOIN dim_month_sf
     ON dim_month_sf.month_id = dim_release_sf.month_id
     INNER JOIN dim_year_sf
     ON dim_month_sf.year_id = dim_year_sf.year_id
     

     select dim_genre_sf.genre
     from dim_game_sf INNER JOIN dim_genre_id
     ON dim_game_sf.genre_id = dim_genre_sf.genre_id;
     
     
   
 

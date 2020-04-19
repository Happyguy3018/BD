--Вивести кількість ігор випущених за кожен рік.
select dim_year_sf.release_year, count(game)
from fact_game_sale
INNER JOIN dim_year_sf
ON fact_game_sale.release_year = dim_year_sf.release_year
GROUP BY dim_year_sf.release_year;


-- Вивести відсоткову залежність кількості ігор одного жанру відносно інших.
select count(dim_game_sf.game), dim_genre_sf.genre
from dim_game_sf
INNER JOIN dim_genre_sf
ON dim_genre_sf.genre = dim_game_sf.genre
GROUP BY dim_genre_sf.genre


--Динамыка кылькосты ігор жанру 'Strategy' по роках
select  
 count(dim_game_sf.game), dim_year_sf.release_year

from fact_game_sale INNER JOIN 
    (
        dim_game_sf
        INNER JOIN dim_genre_sf
        ON dim_genre_sf.genre = dim_game_sf.genre
    )
    ON fact_game_sale.game = dim_game_sf.game
    INNER JOIN dim_year_sf
    ON fact_game_sale.release_year = dim_year_sf.release_year
where dim_genre_sf.genre = 'Strategy'
GROUP BY dim_year_sf.release_year;

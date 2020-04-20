--Вивести кількість ігор випущених за кожен рік.
select count(Game_title.game), R_year.r_year
from Game
INNER JOIN R_year
ON Game.r_year = R_year.r_year
INNER JOIN Game_title
ON Game.game = Game_title.game
GROUP BY  R_year.r_year;

-- Вивести відсоткову залежність кількості ігор одного жанру відносно інших.
select count(Game_title.game), Developer_Genre.genre  from
Game INNER JOIN (Game_title INNER JOIN (Developer_Game INNER JOIN (Developer INNER JOIN Developer_Genre ON Developer.developer = Developer_genre.developer) ON Developer_Game.developer = Developer.developer) ON Game_title.game = developer_game.game) on Game.game = Game_title.game
INNER JOIN R_year on Game.r_year = R_year.r_year
GROUP BY Developer_Genre.genre;

--Динамыка кылькосты ігор жанру 'Action' по роках
select R_year.r_year, count(Game_title.game)
FROM Game INNER JOIN (
                Game_title INNER JOIN 
                    (
                        Developer_Game INNER JOIN 
                        (
                            Developer INNER JOIN Developer_Genre ON Developer.developer = Developer_genre.developer
                        ) 
                        ON Developer_Game.developer = Developer.developer
                    ) 
                    ON Game_title.game = developer_game.game
                ) on Game.game = Game_title.game
INNER JOIN R_year on Game.r_year = R_year.r_year
where TRIM(Developer_Genre.genre) = 'Action'
Group BY R_year.r_year;

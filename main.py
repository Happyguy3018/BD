import cx_Oracle

def get_query(ask, number):
    print('Task {}'.format(number))
    cursor.execute(ask)
    for result in cursor:
        print(result)
    print("--------------------------------\n")


username = 'SYSTEM'
password = 'help2001'
dsn = 'localhost'

connection = cx_Oracle.connect('system/help2001@localhost/orcl')
cursor = connection.cursor()




get_query("""select count(Game_title.game), R_year.r_year
from Game
INNER JOIN R_year
ON Game.r_year = R_year.r_year
INNER JOIN Game_title
ON Game.game = Game_title.game
GROUP BY  R_year.r_year""", 1)

get_query("""select count(Game_title.game), Developer_Genre.genre  from
Game INNER JOIN (Game_title INNER JOIN (Developer_Game INNER JOIN (Developer INNER JOIN Developer_Genre ON Developer.developer = Developer_genre.developer) ON Developer_Game.developer = Developer.developer) ON Game_title.game = developer_game.game) on Game.game = Game_title.game
INNER JOIN R_year on Game.r_year = R_year.r_year
GROUP BY Developer_Genre.genre""", 2)

get_query("""select R_year.r_year, count(Game_title.game)
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
Group BY R_year.r_year""", 3)




cursor.close()
connection.close()
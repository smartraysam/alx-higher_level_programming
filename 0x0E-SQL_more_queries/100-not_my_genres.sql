-- A script that uses the hbtn_0d_tvshows database to list all genres not linked to the show Dexter
SELECT DISTINCT `name`
  FROM `tv_genres` AS genre
       INNER JOIN `tv_show_genres` AS show
          ON genre.`id` = show.`genre_id`
       INNER JOIN `tv_shows` AS tv
          ON show.`show_id` = tv.`id`
       WHERE genre.`name` NOT IN (
      SELECT `name`
        FROM `tv_genres` AS genre
       INNER JOIN `tv_show_genres` AS show
	  ON genre.`id` = show.`genre_id`
  INNER JOIN `tv_shows` AS tv
	  ON show.`show_id` = tv.`id`
       WHERE tv.`title` = "Dexter")
 ORDER BY genre.`name`;

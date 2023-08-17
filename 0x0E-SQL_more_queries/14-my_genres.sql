-- A script that uses the hbtn_0d_tvshows database to lists all genres of the show Dexter.
SELECT genre.`name`
  FROM `tv_genres` AS genre
       INNER JOIN `tv_show_genres` AS show
          ON genre.`id` = show.`genre_id`
       INNER JOIN `tv_shows` AS tv
          ON tv.`id` = show.`show_id`
       WHERE tv.`title` = "Dexter"
 ORDER BY genre.`name`;

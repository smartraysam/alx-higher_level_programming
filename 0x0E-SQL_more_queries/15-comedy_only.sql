-- A script that lists all Comedy shows in the database hbtn_0d_tvshows.
SELECT tv.`title`
  FROM `tv_shows` AS tv
       INNER JOIN `tv_show_genres` AS show
          ON tv.`id` = show.`show_id`
       INNER JOIN `tv_genres` AS genre
          ON genre.`id` = show.`genre_id`
       WHERE genre.`name` = "Comedy"
 ORDER BY tv.`title`;

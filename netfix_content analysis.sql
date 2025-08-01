CREATE DATABASE netflix_analysis;
USE netflix_analysis;

CREATE TABLE netflix_titles (
  show_id VARCHAR(10),
  type VARCHAR(10),
  title VARCHAR(255),
  director VARCHAR(255),
  cast TEXT,
  country VARCHAR(100),
  date_added VARCHAR(50), 
  release_year INT,
  rating VARCHAR(10),
  duration VARCHAR(50),
  listed_in TEXT,
  description TEXT
);

SELECT COUNT(*) FROM netflix_titles;

SELECT type, COUNT(*) AS count FROM netflix_titles
GROUP BY type;

SELECT country, COUNT(*) AS total FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;

SELECT director, COUNT(*) AS total_directed FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_directed DESC
LIMIT 10;

SELECT rating, COUNT(*) AS total FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

SELECT release_year, COUNT(*) AS total FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;
SELECT listed_in, COUNT(*) AS total FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 5;

SELECT title, duration FROM netflix_titles
WHERE type = 'Movie'
ORDER BY duration DESC
LIMIT 10;

SELECT title, date_added FROM netflix_titles
ORDER BY date_added DESC
LIMIT 10;






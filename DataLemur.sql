/* LinkedIn: Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.
Write a SQL query to list the candidates who possess all of the required skills for the job. Sort the the output by candidate ID in ascending order.*/
SELECT candidate_id FROM candidates
WHERE skill IN('Python','Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3
ORDER BY candidate_id;

/*Fb: Assume you are given the tables below about Facebook pages and page likes. Write a query to return the page IDs of all the Facebook pages that don't have any likes. The output should be in ascending order.*/
SELECT pages.page_id
FROM pages
LEFT JOIN page_likes ON pages.page_id = page_likes.page_id
WHERE liked_date IS NULL
ORDER BY page_id;

/*Tesla:investigating in bottlenecks in their production, and they need your help to extract the relevant data. Write a SQL query that determines which parts have begun the assembly process but are not yet finished.*/
SELECT part FROM parts_assembly
WHERE finish_date > current_date OR finish_date IS NULL
GROUP BY part
ORDER BY part;

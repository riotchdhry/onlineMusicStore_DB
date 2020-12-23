-- QUERIE: 7, QUESTIONS: 2, TRIGGERS: 1, FUNCTIONS: 1-----------------------
-- COMPILED BY: Ruchi Bhavasar, Delara Galehdari, Rohit Choudhary-----------



-- Query 1 --------------------
-- Display a list of clients that spent more than the average spent by client in the past month.
use mydb;
Select c.Customers_id, c.Customers_name, mem_c.Membership_Category_price 
from customers c
JOIN membership m ON c.Customers_id = m.Customers_Customers_id
JOIN Membership_Category mem_c ON m.Membership_Category_Membership_Category_id = mem_c.Membership_Category_id
where mem_c.Membership_Category_price >
(Select avg(Membership_Category_price) from membership_category);

-- Query 2 --------------------
-- The top sold products and least sold products over a week.
(select "TOP SOLD" as value,Membership_type,count(membership_id) as total_membership from membership
WHERE EXTRACT(DAY FROM SYSDATE()) - EXTRACT(DAY FROM Membership_startDate) <7 
AND EXTRACT(YEAR FROM Membership_startDate) = EXTRACT(YEAR FROM sysdate())
group by membership_type
order by total_membership desc limit 1)
union
(select "LEAST SOLD" as value,Membership_type,count(membership_id) as total_membership from membership
WHERE EXTRACT(DAY FROM SYSDATE()) - EXTRACT(DAY FROM Membership_startDate) <7 
AND EXTRACT(YEAR FROM Membership_startDate) = EXTRACT(YEAR FROM sysdate())
group by membership_type
order by total_membership limit 1);

-- Query 3 --------------------
-- The maximum price of products in the same category (for example, rock, pop, country, hip-hop). 
SELECT Genres_name, artist_name, MAX(album_price) as Maximum_price
FROM mydb.genres JOIN mydb.artist
ON
genres.Genres_id=artist.Genres_Genres_id
JOIN
mydb.album
ON
artist.Artist_id=album.Artist_Artist_id
GROUP BY Genres_name
ORDER BY Maximum_price desc;

-- Query 4 --------------------
-- List how many customers the system has by location (Country, Province, and City), and then sort them.
select Membership_type,count(Customers_id) as customer_number,city,Province,Country
from membership a join  customers b
 on a.Customers_Customers_id=b.Customers_id
join cities c on c.City_id=b.City_id
 group by membership_type,city
 order by city asc; 

-- Query 5 --------------------
-- List how many products the store has sold for a particular month.
SELECT monthname(Membership_startDate) as "Month",COUNT(Membership_type) AS 'Sold Number of Memberships'
FROM mydb.membership
WHERE year(Membership_startDate)=2020
GROUP BY month(Membership_startDate);

-- Query 6---------------------
--  List how many distinct albums each singer has.
SELECT DISTINCT Artist_name AS 'Artist', COUNT(Album_title) AS 'Number of Albums'
FROM mydb.artist JOIN mydb.album
ON 
artist.Artist_id=album.Artist_Artist_id
GROUP BY Artist_name;

-- Query 7 --------------------
-- List how many tracks of an album are available of a particular singer.
select Album_id,Album_title,Artist_name,count(Track_id) as number_of_track
from album a join track t on a.Album_id=t.Album_Album_id
join artist ar on ar.Artist_id=a.Artist_Artist_id
group by Album_id
order by Artist_name asc;

-- QUESTION 1 -----------------
-- Most popular membership.
select max(m.num) as max_numberOf_members,membership_type from
(select count(Membership_id) as num,Membership_type
from membership
group by Membership_type)m;

-- QUESTION 2 ----------------
-- How much was spent by age category.
SELECT
         CASE
             WHEN a.AGE < 20 THEN 'Teenager'
             WHEN a.AGE BETWEEN 20 AND 30 THEN 'Youth'
             WHEN a.AGE BETWEEN 31 AND 50 THEN 'Adults'
             WHEN a.AGE > 51 THEN 'Seniors'
             ELSE 'Invalid Birthdate'
         END as age_range, 
        sum(mem_c.Membership_Category_price) As SumOfPrice
  FROM
  (select Customers_id,Customers_name,year(sysdate())-(Customers_yearofbirth) as age
from customers c)a
JOIN membership m
 ON a.Customers_id = m.Customers_Customers_id
  JOIN membership_category mem_c
 ON m.Membership_Category_Membership_Category_id = mem_c.Membership_Category_id
group by age_range
  order by age_range;


-- TRIGGER --------------------
SET SQL_SAFE_UPDATES = 0;
USE mydb;

drop trigger if exists before_member_delete;
DELIMITER // 
create trigger before_member_delete
before delete
  on membership
  FOR EACH ROW
BEGIN 
    
     declare Membership_endDate_var  datetime;
	
	 SELECT Membership_endDate
     INTO Membership_endDate_var
     FROM membership
     where Membership_id=OLD.Membership_id;
     
     IF Membership_endDate_var > NOW() THEN
       SIGNAL  SQLSTATE 'HY000'
       SET MESSAGE_TEXT='You can not delete this member';
     END IF;  
  
END//

DELETE FROM membership WHERE Membership_endDate= '2025-01-12 19:20:02';

-- STORED FUNCTION -------------------
 DROP function if exists track_count;
 use mydb;
 delimiter //
CREATE FUNCTION
track_count(playlist_name VARCHAR(20))
RETURNS INTEGER
BEGIN
	DECLARE a_count INTEGER;
	SELECT COUNT(*) INTO a_count
	FROM playlist
	WHERE playlist.playlist_name = playlist_name;
RETURN a_count;
END//
delimiter ;

SELECT track_count('Ruchis Chill mix') as 'Track count';





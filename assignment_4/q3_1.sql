EXPLAIN ANALYZE
SELECT marina.name as marina_name, unused_boat_number, unused_boat_name from
(SELECT  boat.MarinaId, boat.number as unused_boat_number, boat.Name as unused_boat_name from boat 
inner join Marina on marina.MarinaId=boat.marinaid
except
SELECT MarinaId, boat.number, Name from boat inner join reserves on reserves.number=boat.number)as a
inner join
Marina on marina.marinaid = a.marinaid

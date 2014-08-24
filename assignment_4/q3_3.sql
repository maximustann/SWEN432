EXPLAIN ANALYZE
select sailorid, no_of_reserves from
(select sailorid, count(sailorid) as no_of_reserves from res_sailor group by (sailorid)) as a
where no_of_reserves=(select max(no_of_reserves) from (select sailorid, count(sailorid) as no_of_reserves from res_sailor group by(sailorid)) as b)

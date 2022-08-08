select t2.name,d.id,d.plate_number from drivers_license  as d inner join
(
select p.id,p.name,p.license_id from person as p inner join
(
select g2.id,g2.person_id,g2.name from get_fit_now_member as g2 
inner join(
select membership_id from get_fit_now_check_in where check_in_date= 20180109 and membership_id like '48Z%')
as g1 on g2.id= g1.membership_id) as t1 on p.id=t1.person_id) as t2 on d.id=t2.license_id
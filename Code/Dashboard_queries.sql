-- Number of Matches: 690

select count(*)
from sd_wave_pair
where match = 1
and person_id < partner_id

-- Number of participants by field

select f.field_desc, count(*) total
from person p, field f
where p.field_id = f.field_id
group by f.field_desc
order by total desc

-- Number of participants by field with successful matches

select f.field_desc, count(*) total
from person p, field f, sd_wave_pair s
where p.field_id = f.field_id
and p.person_id = s.person_id
and s.match = 1
group by f.field_desc
order by total desc

-- Matches by field of study/career

select p.field1, p.field2, sum(p.total) from
(select f1.field_desc field1, f2.field_desc field2, count(*) total
from sd_wave_pair s, person p1, person p2, field f1, field f2
where match = 1
and s.person_id < s.partner_id
and s.person_id = p1.person_id
and s.partner_id = p2.person_id
and p1.field_id = f1.field_id
and p2.field_id = f2.field_id
and f1.field_id <= f2.field_id
group by f1.field_desc, f2.field_desc
union 
select f2.field_desc, f1.field_desc, count(*)
from sd_wave_pair s, person p1, person p2, field f1, field f2
where match = 1
and s.person_id < s.partner_id
and s.person_id = p1.person_id
and s.partner_id = p2.person_id
and p1.field_id = f1.field_id
and p2.field_id = f2.field_id
and f1.field_id > f2.field_id
group by f1.field_desc, f2.field_desc
) as p
group by p.field1, p.field2
order by 3 desc, 1, 2

-- 
select f.field_desc, s.match, count(*) total
from person p, field f, sd_wave_pair s
where p.field_id = f.field_id
and p.person_id = s.person_id
--and s.match = 1
group by f.field_desc, s.match
order by field_desc, s.match desc


select * from field








select f1.field_desc, f2.field_desc, count(*)
select f1.field_id, f2.field_id, count(*)
from sd_wave_pair s, person p1, person p2, field f1, field f2
where match = 1
and s.person_id < s.partner_id
and s.person_id = p1.person_id
and s.partner_id = p2.person_id
and p1.field_id = f1.field_id
and p2.field_id = f2.field_id
group by f1.field_id, f2.field_id
--group by f1.field_desc, f2.field_desc
order by 1, 2
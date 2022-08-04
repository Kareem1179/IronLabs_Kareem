select a.au_id,a.au_fname as first_name, a.au_lname as last_name , t.title,p.pub_name
from authors as a
right join titleauthor as ta on a.au_id =ta.au_id
left join titles as t on ta.title_id= t.title_id
left join publishers as p on t.pub_id=p.pub_id;

select a.au_id,a.au_fname as first_name, a.au_lname as last_name , count(t.title),p.pub_name
from authors as a
right join titleauthor as ta on a.au_id =ta.au_id
left join titles as t on ta.title_id= t.title_id
left join publishers as p on t.pub_id=p.pub_id
group by p.pub_name,a.au_id
order by p.pub_name;

select a.au_id,a.au_fname as first_name, a.au_lname as last_name , count(t.title)
from authors as a
right join titleauthor as ta on a.au_id =ta.au_id
left join titles as t on ta.title_id= t.title_id
left join publishers as p on t.pub_id=p.pub_id
group by a.au_id
order by count(t.title) desc
limit 3;

select a.au_id,a.au_fname as first_name, a.au_lname as last_name , count(t.title)
from authors as a
left join titleauthor as ta on a.au_id =ta.au_id
left join titles as t on ta.title_id= t.title_id
left join publishers as p on t.pub_id=p.pub_id
group by a.au_id
order by count(t.title) desc;








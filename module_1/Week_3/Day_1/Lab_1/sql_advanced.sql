use pubsss;
select title_id,sum(qty) as sales_per_title from sales group by title_id;
select * from sales order by title_id;
select* from titles;
select * from publishers;
select * from roysched;
select * from titleauthor;


select t.title_id,ta.au_id, (t.advance * ta.royaltyper / 100) as tot_advance , (t.price * sales.qty * t.royalty / 100 * ta.royaltyper / 100) as b from titleauthor as ta inner join titles as t on ta.title_id=t.title_id inner join sales on t.title_id=sales.title_id
order by title_id;

select u.title_id ,u.au_id , cast(u.tot_advance + u.b as dec(10,2)) as tot_royalties from(
select t.title_id,ta.au_id, (t.advance * ta.royaltyper / 100) as tot_advance , (t.price * sales.qty * t.royalty / 100 * ta.royaltyper / 100) as b from titleauthor as ta inner join titles as t on ta.title_id=t.title_id inner join sales on t.title_id=sales.title_id) as u
group by  u.title_id,u.au_id
order by u.au_id;





create table if not exists final_table as
select f.au_id,f.title_id,sum(f.tot_royalties) as total_profits from
(select u.title_id ,u.au_id , cast(u.tot_advance + u.b as dec(10,2)) as tot_royalties from(
select t.title_id,ta.au_id, (t.advance * ta.royaltyper / 100) as tot_advance , (t.price * sales.qty * t.royalty / 100 * ta.royaltyper / 100) as b from titleauthor as ta inner join titles as t on ta.title_id=t.title_id inner join sales on t.title_id=sales.title_id) as u
group by  u.au_id,u.title_id
order by u.au_id) as f
group by f.au_id
order by f.au_id;
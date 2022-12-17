use sakila;

select * from film f
join inventory i using(film_id)
join rental r using(inventory_id);

select f.film_id, f.release_year, f.language_id, f.rental_duration, f.rental_rate, f.length, f.rating, 
date_format(convert(r.rental_date,date), '%Y-%m-%d') as rental_date
from film f
join inventory i using(film_id)
join rental r using(inventory_id)
group by ;

select f.film_id, i.inventory_id, f.title, r.rental_date, 
case
when date_format(convert(r.rental_date,date), '%m') = 08 then True
when date_format(convert(r.rental_date,date), '%m') != 08 then False
end as last_month_rent
from film f
join inventory i using(film_id)
join rental r using(inventory_id)
group by f.film;



select rental_date from rental
order by rental_date desc;


--Odev 9
select country,city
from country join city on country.country_id=city.city_id

select payment_id, first_name, last_name
from customer join payment on customer.customer_id=payment.payment_id

select rental_id, first_name, last_name
from customer join rental on customer.customer_id=rental.rental_id

--Odev 10  

select city,country
from country left join city on country.country_id=city.city_id

select payment.payment_id, customer.first_name, customer.last_name
from customer right join payment on customer.customer_id=payment.payment_id

select rental_id, first_name, last_name
from customer full join rental on customer.customer_id=rental.rental_id

--Odev 11  

actor ve customer tablolarında bulunan first_name sütunlarında tüm verileri sıralayalım.
select first_name
from actor
union
select first_name
from customer

actor ve customer tablolarında bulunan first_name sütunlarında kesişen verileri sıralayalım.

select first_name
from actor
intersect
select first_name
from customer

actor ve customer tablolarında bulunan first_name sütunları içinde ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

select first_name
from actor
except
select first_name
from customer

İlk 3 sorguyu tekrar eden veriler içinde de yapalım.

select first_name
from actor
union all
select first_name
from customer



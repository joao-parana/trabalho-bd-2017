select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= '1995-03-15'
and o_orderdate < '1995-06-15'
and exists (
	select * 
	from lineitem
	where l_orderkey = o_orderkey
	and l_commitdate < l_receiptdate
)
group by o_orderpriority
order by o_orderpriority;

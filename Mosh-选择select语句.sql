-- 【第二章】选择子句select
-- use sql_store;

-- select *
-- from customers
-- where customer_id = 1
-- order by first_name

-- select 
-- 	first_name, 
--     last_name, 
--     points, 
--     points * 10 + 1000  as 'discount factor'  
--     -- 可以直接进行运算     通过as进行命名
-- from customers

-- select distinct state  -- 关键字distinct可以删去重复项
-- from customers

-- Exercise
-- select name, unit_price, unit_price * 1.1 as new_price
-- from products

-- select *
-- from customers
-- where points > 3000
-- where state = "va"  -- VA和va是一样的  
-- where state <> 'va'  -- 这个是查询不是va州的列表，等同于'!='
-- where birthdate > '1990-01-01'  -- 比较运算符同样适用于日期查询。对于日期这种长字符串，也需要加引号''

-- Exercise
-- select *
-- from orders
-- where order_date >= '2019-01-01'

-- select *
-- from customers
-- where birth_date > '1990-01-01' or points > 1000 and 
-- 	state = 'VA'  -- and的优先级总是高于or
-- where not (birth_date > '1990-01-01' or points > 1000)

-- Exercise
-- select *
-- from order_items
-- where order_id = 6 and quantity * unit_price > 30

-- select *
-- from customers
-- where state in ('VA', 'GA', 'FL')  -- 类似的，还有not in
-- line 49 等同于where state = 'VA' or state = 'GA' or state = 'FL'

-- Exercise
-- select * 
-- from products
-- where quantity_in_stock in (49,38,72)

-- select *
-- from customers
-- where points between 1000 and 3000  -- 这个也是包含临界值的哦
-- line 59 等同于where points >= 1000 and points <= 3000

-- Exercise
-- select *
-- from customers
-- where birth_date between '1990-01-01' and '2000-01-01'

-- select *
-- from customers
-- where last_name like 'b%'  -- 获取姓氏以‘b’开头的顾客信息。‘%’表示b后面可以有任意个字符数
-- 除此之外
-- ‘%b%’表示b前后可以有任意个字符，‘%b’表示以‘b’结尾，
-- where last_name like '_____y'  -- 每个‘_’代表一个字符，‘y’前面有5个‘_’，代表输出以‘y’结尾的有6个字符的字符串
-- where last_name like 'b____y'

-- Exercise
-- select *
-- from customers
-- where address like '%TRAIL%' or 
-- 	address like '%AVENUE%'  -- and phone not like '%9'

-- select * 
-- from customers
-- where last_name regexp 'field'
-- line 83 等同于where last_name like '%field%'
-- 还可使用正则表达式进行运算，'^' '$' '|'
-- where last_name regexp '^field'  -- '^'放到字符串前面，表示以此字符串作为开头
-- where last_name regexp 'field$'  -- '$'放到字符串前面，表示以此字符串作为开头
-- where last_name regexp 'field|mac|rose'  -- '|'放到几个字符串之间，表示从这几个字符串中进行查找
-- where last_name regexp '^field|mac|rose'  -- 表示查找以'field''mac''rose'开头的字符串
-- where last_name regexp '[a-h]e'  -- 表示查询e前面有a,b,c,...,h这几个字母的字符串，放到后面也是同理。‘-’表示简写

-- Exercise
-- select *
-- from customers
-- where first_name regexp 'elka|ambur'
-- first names are elka or ambur
-- where last_name regexp 'ey$|on$'
-- last names end with ey or on
-- where last_name regexp 'se|^my'
-- last name start with my or contains se
-- where last_name regexp 'b[r,u]'
-- last names contain b followed by r or u

-- select *
-- from customers
-- where phone is null  -- 此命令用来查询属性值为空的顾客信息。与之相对的为is not null

-- Exercise
-- select *
-- from orders
-- where shipped_date is null

-- select * 
-- from customers
-- order by state desc,first_name desc  -- 多列排序，desc为倒序
-- select first_name, last_name，10 as points
-- from customers
-- order by birth_date  -- 这一段命令表明，即使排序要求不在select选择范围内也可以进行排序
-- order by 1, 2  --通过数列进行排序，1对应select选中的第一列first_name，2对应第二列last_name

-- Exercise
-- select *, quantity * unit_price as total_price
-- from order_items
-- where order_id = 2
-- order by quantity * unit_price desc

-- select *
-- from customers
-- limit 3  -- 通过limit语句查询前三位顾客的信息
-- limit 6, 3  -- 增加一个偏移量‘6’，可以跳过6条信息之后来查询所需数量的信息

-- Exercise
-- select * 
-- from customers
-- order by points desc limit 3
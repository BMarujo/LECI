# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
SELECT * FROM authors;
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
SELECT authors.au_fname, authors.au_lname, authors.phone FROM authors;
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
SELECT au_fname, au_lname, phone FROM authors ORDER BY au_fname, au_lname; 
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone FROM authors ORDER BY first_name, last_name;
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone FROM authors WHERE state = 'CA' AND au_lname != 'Ringer' ORDER BY first_name, last_name;
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
SELECT * FROM publishers WHERE pub_name LIKE '%Bo%';
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
SELECT DISTINCT pub_name FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id) WHERE titles.type = 'Business';
```

### *h)* Número total de vendas de cada editora; 

```
SELECT publishers.pub_name, SUM(titles.ytd_sales) AS total_sales_publisher FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id JOIN sales ON sales.title_id = titles.title_id) GROUP BY pub_name;
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
SELECT publishers.pub_name, titles.title,SUM(titles.ytd_sales) AS total_sales_publisher FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id FULL OUTER JOIN sales ON sales.title_id = titles.title_id) GROUP BY publishers.pub_name, titles.title;
```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
SELECT titles.title FROM (titles JOIN sales ON titles.title_id = sales.title_id JOIN stores ON sales.stor_id = stores.stor_id) WHERE stores.stor_name = 'Bookbeat';
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
select au_fname, au_lname from (
	(authors join titleauthor on authors.au_id=titleauthor.au_id) 
	join titles on titleauthor.title_id=titles.title_id) 
	group by au_fname, au_lname 
	having count (distinct [type]) > 1;
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
select pub_id, [type], avg(price) avg_price, count(ord_num) n_sales from 
	(titles join sales on titles.title_id=sales.title_id) 
	group by pub_id, [type];
```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
select [type] from titles group by [type] having max(advance) > 1.5*avg(advance);
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
select title, au_fname, au_lname, ytd_sales*price*royalty/100 as revenue from (
	(titles join titleauthor on titles.title_id=titleauthor.title_id) 
	join authors on titleauthor.au_id=authors.au_id) 
	group by title, price, au_fname, au_lname, ytd_sales, royalty;
```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
select title, ytd_sales, ytd_sales*price as total_revenue, ytd_sales*price*royalty/100 as auths_revenue, ytd_sales*price-ytd_sales*price*royalty/100 as publisher_revenue 
	from titles;
```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
select title, ytd_sales, au_fname + ' ' + au_lname as author, ytd_sales*price*royalty/100 as auths_revenue, ytd_sales*price-ytd_sales*price*royalty/100 as publisher_revenue 
	from ((titles join titleauthor on titles.title_id=titleauthor.title_id) 
	join authors on titleauthor.au_id=authors.au_id) group by title, price, au_fname, au_lname, ytd_sales, royalty;
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
select stor_name from (
	(stores join sales on stores.stor_id=sales.stor_id) 
	join titles on sales.title_id=titles.title_id) 
	group by stores.stor_name 
	having count(title)=(select count (titles.title_id) from titles);
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
select stor_name from (stores join sales on stores.stor_id=sales.stor_id) 
	group by stor_name having sum(sales.qty) > (select sum(sales.qty)/count(sales.stor_id) 
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
select titles.title from titles full outer join (
	select distinct titles.title from titles join sales on sales.title_id=titles.title_id join stores on stores.stor_id=sales.stor_id where stores.stor_name='Bookbeat') as s on titles.title=s.title
	where s.title is null;
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
select p.pub_name, s.stor_name
	from publishers p
	cross join stores s
	left join (select distinct pub_name, stor_name from publishers pub
    join titles t on pub.pub_id = t.pub_id
    join sales sa on t.title_id = sa.title_id
	join stores sto on sa.stor_id = sto.stor_id) as joined_table on p.pub_name = joined_table.pub_name and s.stor_name = joined_table.stor_name
	where joined_table.pub_name is null and joined_table.stor_name is null;
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
select Pname, Ssn, Fname, Lname from (project join employee on Dno=Dnum);
```

##### *b)* 

```
select employee.Fname, employee.Lname from (employee join 
	(select Ssn from employee where Fname='Carlos' and Minit='D' and Lname='Gomes') as chefe on employee.Super_ssn=chefe.Ssn);
```

##### *c)* 

```
select Pname, total_hours from (project join 
	(select Pno,sum(Hours) as total_hours from works_on group by Pno) 
	as project_hours on project.Pnumber=project_hours.Pno);
```

##### *d)* 

```
select employee.Fname, employee.Lname from employee 
	join works_on on employee.Ssn = works_on.Essn 
	join project on works_on.Pno = project.Pnumber
	where employee.Dno = 3 and works_on.Hours > 20 and project.Pname = 'Aveiro Digital';
```

##### *e)* 

```
select Fname, Lname from works_on join employee on Essn=Ssn where Pno is null;
```

##### *f)* 

```
SELECT Dname, AVG(Salary) AS AVG_Salary_Women FROM (Department JOIN Employee ON Dnumber=Dno) WHERE Sex='F' GROUP BY Dname;
```

##### *g)* 

```
SELECT Fname, Lname, COUNT(Dependent.Essn) AS Dependent_Count FROM (Employee JOIN Dependent ON Ssn=Essn) GROUP BY Fname, Lname HAVING  COUNT(Dependent.Essn) > 2;
```

##### *h)* 

```
SELECT Fname, Lname FROM (Employee JOIN Department ON Ssn=Mgr_Ssn FULL OUTER JOIN Dependent ON Ssn=Essn) WHERE Essn IS NULL;
```

##### *i)* 

```
SELECT Fname, Lname, e_Address, Dlocation, Plocation, COUNT(Plocation) AS Project_Location_Count FROM (Employee JOIN Department ON Dno=Dnumber JOIN Dept_locations ON Department.Dnumber=Dept_locations.Dnumber JOIN Project ON Dno=Dnum) GROUP BY  Fname, Lname, e_Address, Dlocation, Plocation HAVING Dept_locations.Dlocation!='Aveiro' AND Plocation='Aveiro';
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT nome FROM (encomenda FULL OUTER JOIN fornecedor ON fornecedor=nif) WHERE fornecedor IS NULL;
```

##### *b)* 

```
SELECT nome, AVG(item.unidades) AS Average FROM item INNER JOIN produto ON codProd=codigo GROUP BY codProd, nome;
```


##### *c)* 

```
SELECT AVG(num_prod) AS Average FROM (SELECT COUNT(codProd) AS num_prod FROM item GROUP BY numEnc) AS T1;
```


##### *d)* 

```
SELECT fornecedor.nome, produto.nome, qnt_total FROM fornecedor INNER JOIN ( SELECT codProd, fornecedor, SUM(unidades) AS qnt_total FROM item INNER JOIN encomenda ON numEnc=numero GROUP BY codProd, fornecedor) AS T1 ON fornecedor=nif INNER JOIN produto ON codProd=codigo;
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
select nome from prescricao full outer join paciente on prescricao.numUtente=paciente.numUtente where farmacia is null;
```

##### *b)* 

```
select especialidade, count (numPresc) as numPrescrições from (prescricao join medico on numSNS=numMedico) group by especialidade;
```


##### *c)* 

```
select nome, count (numPresc) as numPrescrições from (prescricao join farmacia on farmacia=nome) group by nome;
```


##### *d)* 

```
select nome from farmaco where numRegFarm=906 except select nomeFarmaco from presc_farmaco where numRegFarm=906;

```

##### *e)* 

```
select farmacia, nome, count(numRegFarm) as farmacos_vendidos from 
	prescricao join presc_farmaco on prescricao.numPresc=presc_farmaco.numPresc join farmaceutica on numReg=numRegFarm where farmacia is not null 
	group by farmacia, nome ;
```

##### *f)* 

```
select distinct nome from paciente 
	join prescricao on prescricao.numUtente=paciente.numUtente 
	where prescricao.numUtente in (select numUtente 
	from (select numUtente, count(numMedico) as medicos_diferentes from prescricao group by numUtente) as t 
	where medicos_diferentes > 1);
```

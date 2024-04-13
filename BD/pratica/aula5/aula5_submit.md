il# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
π Pname,Ssn,Fname,Lname (
    project ⨝ Dno=Dnum employee
)
```


### *b)* 

```
π employee.Fname, employee.Lname (
    employee ⨝ employee.Super_ssn=chefe.Ssn 
    ρ chefe π Ssn σ Fname='Carlos' ∧ Minit='D' ∧ Lname ='Gomes' employee
)
```


### *c)* 

```
π Pname,total_hours (
    project ⨝ Pnumber=Pno (
        γ Pno;sum(Hours) -> total_hours works_on
    )
)
```


### *d)* 

```
π Fname,Lname (
    σ(Dno = 3 ∧ Hours > 20 ∧ Pname = 'Aveiro Digital') (
        employee ⨝ works_on ⨝ project
    )
)
```


### *e)* 

```
π Fname, Lname (
	σ Pno=null (
		works_on ⨝ Essn=Ssn employee
	)
)
```


### *f)* 

```
γ Dname;avg(Salary)-> avg_salary_F (σ Sex = 'F' (department ⨝ Dnumber = Dno employee))
```


### *g)* 

```
σ dependent_count>2 (γ Fname;count(Essn)-> dependent_count (employee ⨝ Ssn = Essn dependent))
```


### *h)* 

```
π Fname,Lname,Ssn (σ Essn = null (dependent ⟗ Essn = Ssn (employee ⨝ Mgr_ssn = Ssn department)))
```


### *i)* 

```
σ count_local>=1 (γ Fname,Address;count(Plocation)-> count_local (σ Dlocation ≠ ('Aveiro') (dept_location ⨝ dept_location.Dnumber = department.Dnumber (works_on ⨝ Pno = Pnumber (project ⨝ Dnum = Dnumber (employee ⨝ Dno = Dnumber department))))))
```


## ​Problema 5.2

### *a)*

```
π nome,nif (σ fornecedor=null (encomenda ⟗ encomenda.fornecedor = fornecedor.nif (fornecedor)))
```

### *b)* 

```
(γ nome;avg(item.unidades)-> media (produto ⨝ codigo = codProd (item)))
```


### *c)* 

```
γ avg(produtos_por_encomenda)-> media (
γ encomenda.numero;COUNT(produto.codigo)-> produtos_por_encomenda (
    produto ⨝ codigo = codProd (encomenda ⨝ numero = numEnc (item))))
```


### *d)* 

```
 γ fornecedor.nome,produto.nome,nif;sum(unidades)->qnt_total (π produto.nome,fornecedor.nif, item.unidades,fornecedor.nome (produto ⨝ produto.codigo = item.codProd (item ⨝ numEnc = encomenda.numero (fornecedor ⨝ nif = fornecedor (encomenda)))))
```


## ​Problema 5.3

### *a)*

```
π nome (
	σ farmacia=null (
		prescricao ⟗ prescricao.numUtente=paciente.numUtente paciente
	)
)
```

### *b)* 

```
γ especialidade; count(numPresc) -> numPrescricoes (
	prescricao ⨝ numSNS=numMedico medico
)
```


### *c)* 

```
γ nome; count(numPresc) -> numPrescricoes (
	prescricao ⨝ farmacia=nome farmacia
)
```


### *d)* 

```
π nome (σ numRegFarm = 906 farmaco) - π nomeFarmaco (σ numRegFarm = 906 presc_farmaco)
```

### *e)* 

```
γ farmacia, nome; count(numRegFarm) -> Farmacos_vendidos (
	σ farmacia != null (
		prescricao ⨝ prescricao.numPresc=presc_farmaco.numPresc presc_farmaco
	) 
	⨝ numReg=numRegFarm farmaceutica
)
```

### *f)* 

```
π nome (
	paciente ⨝ prescricao.numUtente=paciente.numUtente (
		σ medicos_diferentes>1 (
			γ numUtente; count(numMedico)->medicos_diferentes (
				π numUtente,numMedico prescricao
			)
		)
	)
)
```

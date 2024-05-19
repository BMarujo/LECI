# BD: Guião 7


## ​7.2 
 
### *a)*

```
Na 1ª forma normal, uma vez que, todos os atributos são simples e indivisíveis, não existindo também relações dentro de relações (nested relations).
```

### *b)* 

```
A - _Titulo Livro_
B - _Nome Autor_
C - Afiliaçao Autor
D - Tipo Livro
E - Preco
F - NoPaginas
G - Editor
H - Endereço Editor
I - Ano Publicaçao

2FN
R1 = (_A_, _B_, D, E, F, G, H, I)
R2 = (_B_, C)

3FN
R1 = (_A_, _B_, D, F, G, H, I)
R2 = (_B_, C)
R3 = (D, F, E)
R4 = (G, H)
```




## ​7.3
 
### *a)*

```
Chave de R:{A,B}
```


### *b)* 

```
R1(<u>A</u>, <u>B</u>, C)
R2(<u>A</u> , D, E, I, J)
R3(<u>B</u> , F, G, H)
```


### *c)* 

```
R1(<u>A</u>, <u>B</u>,C)
R2(<u>A</u>, D, E)
R3(<u>B</u>, F)
R4(<u>F</u>, G, H)
R5(<u>D</u>, I, J)
```


## ​7.4
 
### *a)*

```
Chave de R:{B,C}
```


### *b)* 

```
R1(<u>A</u>, <u>B</u>, C, D)
R2(<u>D</u>, E)
```


### *c)* 

```
R1(<u>B</u>, <u>C</u>, D)
R2(<u>C</u>, A)
R3(<u>D</u>, E)
```



## ​7.5
 
### *a)*

```
Chave de R: A e B
```

### *b)* 

```
2FN
R1 = (_A_, _B_, C, D, E)
R2 = (_A_, C, D)
```


### *c)* 

```
3FN
R1 = (_A, _B_, C, D, E)
R2 = (_A_, C)
R3 = (C, D)
```

### *d)* 

```
BCNF
R1 = (_A, _B_, C, D, E)
R2 = (_A_, C)
R3 = (C, D)
```

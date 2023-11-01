/*
	Diogo Daniel Soares Ferreira
	Engenharia de Computadores de Telemática 2015/2016
	diogodanielsoaresferreira@ua.pt
	
	Clean Sheet de todos os algoritmos dados na aulas de algoritmos e complexidade

	Pesquisa:
	Pesquisa Sequencial
	Pesquisa ordenada
	Pesquisa binária
	Pesquisa binária recursiva

	Ordenação:
	Ordenação por seleção
	Bubble Sort
	Insertion Sort
	Shell Sort
	Heap Sort
	Merge Sort

	Recursivos:
	Cálculo da potência
	Inverter a ordem de um array
	Cálculo do determinante
	Multiplicação por partição
	Torres de Hanói

*/

/***************************************/
/* Pesquisa */

/* Pesquisa sequencial */
/* O(n)= n */

int pesquisasequencial(int *v, int n, int x){
	int i=0;
	while(i<n){
		if(v[i]==x)
			return i;
		i++;
	}
	return -1;
}

/* Pesquisa num array ordenado */
/* O(n)= n */

int pesquisaordenada(int *v, int n, int x){
	int i=-1;
	int encontrou=0;
	
	while(!encontrou && i<n-1){
		i++;
		encontrou=(v[i]>=x);
	}

	if(encontrou && (v[i]==x))
		return i;

	return -1;
}

/* Pesquisa binária */
/* O(n)= log2(n) */

int pesquisabinaria(int *v, int n, int x){
	int esq, dir, meio;

	esq=0;
	dir=n-1;

	while(esq<=dir){
		meio=esq/2+dir/2;	/* Para não causar overflow */
		if(v[meio==x]) return x;
		if(v[meio]>x) dir = meio-1;
		else esq=meio+1;
	}

	return -1;
}

/* Pesquisa binária recursiva */
/* O(n)= log2(n) */

int pesquisabinariarec(int *v, int esq, int dir, int valor){
	
	int medio;

	if(esq>dir) return -1;
	medio=esq/2+dir/2;	/* Para evitar possível overflow */
	if(v[medio]==valor)
		return medio;
	if(v[medio]>valor)
		return pesquisabinariarec(v, esq, medio-1, valor);
	return pesquisabinariarec(v, medio+1, dir, valor);

}


/***************************************/
/* Ordenação */

/* Ordenação por seleção */
/* O(n) = n^2 */

void ordenacaoselecao(int *v, int n){
	int k, i, indMax, big=0;;

	for(k=n-1;k>0;k--){
	big=0;
	
		/* Procurar maior */
		for(i=0;i<=k;i++)
			if(big<v[i])
				indMax=i;

		if(k!=indMax)
			troca(&v[k],&v[indMax]);
	}
}

/* Bubble Sort */
/* O(n) = n^2 */

void bubblesort(int *v, int n){
	int k,i,trocas;

	k=n;
	trocas=1;

	while(trocas){
		trocas=0;
		k--;
		for(i=0;i<k;i++)
			if(v[i]>v[i+1]){
				troca(&v[i],&v[i+1]);
				trocas=1;
			}
	}

}

/* Insertion Sort */
/* O(n) = n^2 */

void insertionsort(int *v, int n){
	int i;

	for (i = 0; i < n-1; i++)
	{
		if(v[i+1]<v[i])
			inserir(v[i+1],v,i+1);
	}

}

void inserir(int elem, int *v, int n){
	int k;

	k=n-1;

	while(k>=0 && elem<v[k]){
		v[k+1] = v[k];
		k--;
	}
	v[k+1]=elem;
}

/* Shell Sort */
/* O(n) = n^2 */

void shellsort(int *v, int n){
	int incremento,i,j,temp;

	for(incremento=n/2;incremento>0;incremento/=2)
		for(i=incremento;i<n;i++){
			temp=v[i];
			for(j=i;j>=incremento;j-=incremento)
				if(temp<v[j-incremento])
					v[j]=v[j-incremento];
				else break;
		}
	

}

/* Heap Sort */
/* O(n) =  nlog(n) */

void heapsort(int *v, int n){

	int i;

	/* Construir heap */
	for (i = n/2-1; i >= 0; i--)
	{
		fixheap(v,i,n);
	}

	/* Ordenar */
	for(i=n-1;i>0;i--){
		troca(&v[0],&v[i]);
		fixheap(v,0,i);
	}
}

void fixheap(int *v, int i, int n){

	int tmp, filho;

	for(tmp=v[i];filhoesq(i)<n;i=filho){
		filho=filhoesq(i);
		if(filho!=n-1 && v[filho+1]>v[filho])
			filho++;
		if(tmp<v[filho])
			v[i]=v[filho];
		else break;
	}
	v[i]=tmp;

}

int filhoesq(int i){
	return 2*i+1;
}

/* Merge Sort */
/* O(n) = nlog(n) */

void Msort(int *a, int *temp, int left, int right){

	int center;

	if(left<right){
		center=left/2+right/2; /* Para evitar possível overflow */
		Msort(a, temp, left, center);
		Msort(a, temp, center+1, right);
		Merge(a, temp, left, center+1, right);
	}

}

void Merge(int *a, int *tmpa, int Lpos, int Rpos, int Rend){
	int Lend, tmpPos, Nelem, i;

	Lend=Rpos-1;
	tmpPos=Lpos;
	Nelem=Rend-Lpos+1;

	while(Lpos<=Lend && Rpos<=Rend){
		if(a[Lpos]<=a[Rpos])
			tmpa[tmpPos++]=a[Lpos++];
		else
			tmpa[tmpPos++]=a[Rpos++];
	}

	while(Lpos<=Lend)
		tmpa[tmpPos++] = a[Lpos++];

	while(Rpos<=Rend)
		tmpa[tmpPos++] = a[Rpos++];

	for(i=0;i<Nelem;i++, Rend--)
		a[Rend] = tmpa[Rend];

}

/******************************/
/* Funções recursivas */

/* Cálculo da potência */
/* O(n) = n */

double p(float x, int n){
	if(n==0)
		return 1;
	return x*p(x,n-1);
}

/* Inverter a ordem de um array */
/* O(n) = n */

void inverter(int *v, int esq, int dir){

	if(esq<dir){
		troca(&v[esq],&v[dir]);
		inverter(v, esq+1, dir-1);
	}

}

/* Cálculo de um determinante de uma matriz */
/* O(n) = n! */

double det(PtMatrix a, int n){

	int sinal, soma, i;
	PtMatrix aux;

	if(n==1) return a[0][0];
	sinal=-1;
	soma=0;

	for(i=0;i<n;i++){
		aux=CopiarMatriz(a,i,0,n);
		sinal*=-1;
		soma+=sinal*a[i][0]*det(aux,n-1);
	}

	return soma;

}

PtMatrix CopiarMatriz (PtMatrix pmat, unsigned int pl, unsigned int pc)
{

  PtMatrix SubM;
  unsigned int i,j;


  /* Subtrai 1 aos parâmetros para podermos comparar com dimensões da matriz */
  pl--;
  pc--;

  /* Efetua as atribuições à submatriz */
  for(i=0;i<pmat->NL;i++)
    for(j=0;j<pmat->NC;j++){
      if(i<pl){
        if(j>pc)
          SubM->Matrix[i][j-1]=pmat->Matrix[i][j];
        else if(j<pc)
          SubM->Matrix[i][j]=pmat->Matrix[i][j];
      }
      else if (i>pl){
        if(j>pc)
          SubM->Matrix[i-1][j-1]=pmat->Matrix[i][j];
        else if(j<pc)
          SubM->Matrix[i-1][j]=pmat->Matrix[i][j];
      }
    }

  return SubM;
}

/* Torres de Hanói */
/* O(n) = 2^n */

void hanoi(int n, int origem, int auxiliar, int destino){
	if(n==1) mover(origem, destino);
	else{
		hanoi(n-1, origem, destino, auxiliar);
		mover(origem, destino);
		hanoi(n-1, auxiliar, origem, destino);
	}
}

void mover(int x1, int x2){
	printf("Mover de %2d para %2d", x1, x2);
}

/* Multiplicação por partição (Algoritmo de Karatsuba) */
/* O(n) =  */

BigNum multRec(BigNum x, BigNum y){

	int limiar = 300;
	int n;
	BigNum Xh, Xl, Yh, Yl, p1, p2, p3;

	if(NumAlg(x)<limiar && NumAlg(y)<limiar)
		return x*y;

	n=NumAlg(maior(x,y));
	n/=2;
	Xh=x>>n;
	Xl=x-x<<n;
	Yh=y>>n;
	Yl=y-y<<n;

	p1=multRec(Xh,Yh);
	p2=multRec(Xl,Yl);
	p3=multRec(Xh-Xl,Yl-Yh);

	return p1<<2*n+(p1+p2+p3)<<n+p2

}

/* Funções auxiliares */

void troca(int *v1, int *v2){
	int t;

	t=v1;
	v1=v2;
	v2=t;

}
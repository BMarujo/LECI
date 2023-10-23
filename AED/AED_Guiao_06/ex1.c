#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <error.h>
#include <string.h>

unsigned long int array[500][500];


unsigned long int Delannoy(unsigned int m, unsigned int n){

    if(m == 0 || n == 0){
        return 1;
    }
    else if(array[m][n] != 0){
        return array[m][n];
    }
    else{

        unsigned long int x=Delannoy(m-1, n) + Delannoy(m, n-1) + Delannoy(m-1, n-1);
        array[m][n] = x;
        return x;
    }


}

unsigned long int Delannoy2(unsigned int m, unsigned int n){

    if(m == 0 || n == 0){
        return 1;
    }
    else{

        unsigned long int x=Delannoy(m-1, n) + Delannoy(m, n-1) + Delannoy(m-1, n-1);
        return x;
    }


}


unsigned long int Iterative_Delannoy(unsigned int m, unsigned int n){

    size_t i = 0;
    size_t j = 0;
    size_t k = 0;
    size_t **A = NULL;

    A = (size_t **)malloc((m+1) * sizeof(int *));
    assert(A != NULL);
    for(i = 0; i <= m; i++){
        A[i] = (size_t *)malloc((n+1) * sizeof(int));
        assert(A[i] != NULL);
    }

    for(i = 0; i <= m; i++){
        A[i][0] = 1;
    }
    for(j = 0; j <= n; j++){
        A[0][j] = 1;
    }

    for(i = 1; i <= m; i++){
        for(j = 1; j <= n; j++){
            A[i][j] = A[i-1][j] + A[i][j-1] + A[i-1][j-1];
        }
    }

    k = A[m][n];

    for(i = 0; i <= m; i++){
        free(A[i]);
    }
    free(A);

    return k;
}


int main(){

    unsigned long int m = 0;
    unsigned long int n = 0;
    unsigned long int result = 0;

    //start array with all values 0
    for(int i = 0; i < 100; i++){
        for(int j = 0; j < 100; j++){
            array[i][j] = 0;
        }
    }



    printf("Enter m: ");
    scanf("%lu", &m);
    printf("Enter n: ");
    scanf("%lu", &n);

    result = Delannoy2(m, n);
    unsigned long int result2 = Delannoy(m, n);

    printf("Delannoy(%lu, %lu) = %lu\n", m, n, result);
    printf("Delannoy2(%lu, %lu) = %lu\n", m, n, result2);
    printf("Iterative_Delannoy(%lu, %lu) = %lu\n", m, n, Iterative_Delannoy(m, n));

    return 0;
}
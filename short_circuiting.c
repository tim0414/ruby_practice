#include <stdio.h>

int be_true(int *a){
    (*a)++;
    printf("%d, true", *a);
    return 1;
}

int be_false(int *a){
    (*a)++;
    printf("%d, false", *a);
    return 0;
}

void main(){
    int count = 0;
    int *a = &count;

    //int b = (be_true(a) || be_false(a)) && be_true(a);
    //b = 
    int b = 0;
    1 && (b++);
    printf("%d", b);
}
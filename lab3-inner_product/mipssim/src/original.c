int *a = ? ;
int *b = ? ;
int n =  ? ;

int main() {
    int sum = 0;
    for (int *pa = a, *pb = b, *qa = a + n; pa != qa; pa++, pb++) {
        int va = *pa, vb = *pb;
        sum += va * vb;
    }
}

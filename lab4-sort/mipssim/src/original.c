int *a = ? ;
int n =  ? ;

int main() {
    for (int *end = a + n - 1; a != end; --end)
        for (int *ptr1 = a, *ptr2 = a + 1; ptr1 != end; ++ptr1, ++ptr2)
            if (*ptr1 > *ptr2) {
                int tmp = *ptr1;
                *ptr1 = *ptr2;
                *ptr2 = tmp;
            }
}

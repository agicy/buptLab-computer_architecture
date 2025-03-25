int *a = ? ;
int *b = ? ;
int n =  ? ;

int main() {
    for (int size = 1; size < n; size <<= 1) {
        for (int left = 0; left < n; left += size * 2) {
            int mid = left + size;
            int right = min(mid + size, n);

            int *iptr = a + left, *llim = a + mid;
            int *jptr = a + mid, *rlim = a + right;
            int *tptr = b;

            while (iptr != llim && jptr != rlim)
                if (*iptr <= *jptr)
                    *tptr++ = *iptr++;
                else
                    *tptr++ = *jptr++;
            while (iptr != llim)
                *tptr++ = *iptr++;
            while (jptr != rlim)
                *tptr++ = *jptr++;

            int *src = b, *dst = a + left;
            int step = right - left;
            while (step--)
                *dst++ = *src++;
        }
    }
}

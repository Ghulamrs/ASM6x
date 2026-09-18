/* a frame past the 15-bit stack offset (32767 words) and one just inside it, a long string
   with every escape, floats and doubles, a wide switch, 64-bit arithmetic */
#include <stdio.h>
#include <string.h>
static const char *msg = "tab\there\nnew \"quoted\" back\\slash \x41\101 bell\a\b\f\v end\0after";
double d = 1.5; float f = 2.25f; long long ll = 0x123456789ABCDEF0LL;
int big(int i) { char a[140000]; memset(a, i, sizeof a); return a[i] + a[139999]; }
int mid(int i) { char a[120000]; memset(a, i, sizeof a); return a[i] + a[119999]; }
int sw(int x) {
    switch (x) {
#define C(n) case n: return n * 3 + 1;
    C(1) C(2) C(3) C(4) C(5) C(6) C(7) C(8) C(9) C(10) C(11) C(12) C(13) C(14) C(15) C(16)
    C(100) C(200) C(300) C(400) C(500) C(600) C(700) C(800) C(900) C(1000)
    default: return -1;
    }
}
int main(void) {
    printf("%s %d %d %d %f %f %lld\n", msg, big(3), mid(4), sw(300), d, (double)f, ll * 3);
    return 0;
}

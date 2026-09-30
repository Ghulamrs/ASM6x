#include <cstdio>
#include <cstdint>
#include <string>
#include <vector>
#include <fstream>
#include <cstdlib>
using namespace std;
vector<vector<string> > seqs;
static uint32_t H(int kind, uint32_t k, uint32_t seed, const string &s) {
    uint32_t h = seed;
    for (unsigned char c : s) switch (kind) {
    case 0: h = h*k + c; break;
    case 1: h = (h*k) ^ c; break;
    case 2: h = ((h<<k)|(h>>(32-k))) ^ c; break;
    case 3: h = ((h<<k)|(h>>(32-k))) + c; break;
    case 4: h = (h<<k) + c; break;
    case 5: h = (h<<k) ^ c; break;
    case 6: h = (h + c) * k; break;
    case 7: h = (h ^ c) * k; break;
    case 8: h = (h<<k) + h + c; break;
    case 9: h = h*k + c; h ^= h >> 16; break;
    }
    return h;
}
static uint32_t R(int red, uint32_t h) {
    switch (red) {
    case 0: return h;
    case 1: return h & 0x7fffffff;
    case 2: { int32_t v = (int32_t)h; return v < 0 ? (uint32_t)(-(int64_t)v) : (uint32_t)v; }
    case 3: return h & 0xffff;
    case 4: return h & 0x7fff;
    case 5: { int16_t v = (int16_t)h; return v < 0 ? -v : v; }
    case 6: return h >> 16;
    case 7: return h ^ (h >> 16);
    case 8: return (h & 0xffff) ^ (h >> 16);
    case 9: return h >> 8;
    case 10: return h & 0xffffff;
    }
    return h;
}
const char *kn[] = {"h*k+c","h*k^c","rotl^c","rotl+c","h<<k+c","h<<k^c","(h+c)*k","(h^c)*k","h<<k+h+c","h*k+c,^>>16"};
const char *rn[] = {"u32","u31","abs32","u16","u15","abs16","hi16","fold16","fold16b","hi24","lo24"};
int main(int argc, char **argv) {
    for (int i = 1; i < argc; i++) { ifstream f(argv[i]); vector<string> s; string w; while (f >> w) s.push_back(w); seqs.push_back(s); }
    const int NMAX = 70000;
    vector<char> okd(NMAX+1), oka(NMAX+1);
    for (int kind = 0; kind < 10; kind++) {
        int k0 = 2, k1 = 300; if (kind >= 2 && kind <= 5) { k0 = 1; k1 = 32; } if (kind == 8) { k0 = 1; k1 = 32; }
        for (int k = k0; k < k1; k++) for (int seed = 0; seed < 2; seed++) for (int red = 0; red < 11; red++) {
            for (int N = 2; N <= NMAX; N++) okd[N] = oka[N] = 1;
            bool any = true;
            for (auto &seq : seqs) {
                vector<uint32_t> h; for (auto &s : seq) h.push_back(R(red, H(kind, k, seed ? (uint32_t)s.size() : 0, s)));
                any = false;
                for (int N = 2; N <= NMAX; N++) {
                    if (!okd[N] && !oka[N]) continue;
                    int distinct = 1;
                    for (size_t i = 1; i < h.size(); i++) {
                        uint32_t a = h[i-1] % N, b = h[i] % N;
                        if (a != b) distinct++;
                        if (a < b) okd[N] = 0;
                        if (a > b) oka[N] = 0;
                        if (!okd[N] && !oka[N]) break;
                    }
                    if (distinct * 3 < (int)h.size() * 2) okd[N] = oka[N] = 0;    /* not a degenerate collapse */
                    if (okd[N] || oka[N]) any = true;
                }
                if (!any) break;
            }
            if (!any) continue;
            printf("%s k=%d seed=%s %s:", kn[kind], k, seed ? "len" : "0", rn[red]);
            int c = 0;
            for (int N = 2; N <= NMAX && c < 12; N++) { if (okd[N]) { printf(" d%d", N); c++; } if (oka[N]) { printf(" a%d", N); c++; } }
            printf("\n"); fflush(stdout);
        }
    }
    puts("done");
}

#include <cstdio>
#include <cstdint>
#include <string>
#include <vector>
#include <fstream>
using namespace std;
int main(int argc, char **argv) {
    vector<string> seq; { ifstream f(argv[1]); string w; while (f >> w) seq.push_back(w); }
    for (int kind = 0; kind < 3; kind++)
    for (int k = 1; k < 32; k++) for (int red = 0; red < 3; red++) {
        vector<uint32_t> h;
        for (auto &s : seq) {
            uint32_t v = 0;
            for (unsigned char c : s) {
                if (kind == 0) v = ((v<<k)|(v>>(32-k))) ^ c;
                else if (kind == 1) v = ((v<<k)|(v>>(32-k))) + c;
                else v = ((v>>k)|(v<<(32-k))) ^ c;
            }
            if (red == 1) v &= 0x7fffffff;
            if (red == 2) { int32_t s = (int32_t)v; v = s < 0 ? (uint32_t)(-(int64_t)s) : (uint32_t)s; }
            h.push_back(v);
        }
        for (uint32_t N = 2; N <= (1u<<26); N++) {
            bool okd = true, oka = true; int distinct = 1;
            for (size_t i = 1; i < h.size() && (okd || oka); i++) {
                uint32_t a = h[i-1] % N, b = h[i] % N;
                if (a != b) distinct++;
                if (a < b) okd = false;
                if (a > b) oka = false;
            }
            if ((okd || oka) && distinct * 3 >= (int)h.size() * 2) printf("%s kind=%d k=%d red=%d N=%u %s\n", argv[1], kind, k, red, N, okd ? "desc" : "asc");
        }
    }
    puts("done");
}

/* open-addressing simulation: insert names in mention order, walk the table, compare exactly */
#include <cstdio>
#include <cstdint>
#include <string>
#include <vector>
#include <fstream>
using namespace std;
static uint32_t H(int kind, uint32_t k, const string &s) {
    uint32_t h = 0;
    for (unsigned char c : s) {
        if (kind == 0) h = ((h<<k)|(h>>(32-k))) ^ c;
        else if (kind == 1) h = (h*k) ^ c;
        else if (kind == 2) h = h*k + c;
    }
    return h;
}
int main(int argc, char **argv) {
    /* argv: mention-order file, observed-order file */
    vector<string> ins, obs; string w;
    { ifstream f(argv[1]); while (f >> w) ins.push_back(w); }
    { ifstream f(argv[2]); while (f >> w) obs.push_back(w); }
    for (int kind = 0; kind < 3; kind++)
    for (int k = (kind == 0 ? 1 : 2); k < (kind == 0 ? 32 : 600); k++)
    for (int N = (int)ins.size(); N <= 70000; N++) {
        vector<uint32_t> h; for (auto &s : ins) h.push_back(H(kind, k, s) % N);
        for (int d = -1; d <= 1; d += 2) {
            vector<int> tab(N, -1);
            for (size_t i = 0; i < ins.size(); i++) {
                int s = h[i];
                while (tab[s] >= 0) s = (s + d + N) % N;
                tab[s] = i;
            }
            for (int walk = -1; walk <= 1; walk += 2) {
                size_t j = 0; bool ok = true;
                for (int t = 0; t < N && ok; t++) {
                    int s = walk < 0 ? N - 1 - t : t;
                    if (tab[s] < 0) continue;
                    if (j >= obs.size() || ins[tab[s]] != obs[j]) ok = false;
                    j++;
                }
                if (ok && j == obs.size()) { printf("MATCH kind=%d k=%d N=%d probe=%d walk=%d\n", kind, k, N, d, walk); fflush(stdout); }
            }
        }
    }
    puts("done");
}

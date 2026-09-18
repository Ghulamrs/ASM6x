#include "asm.h"

#include <cstdio>
#include <cstring>
#include <thread>

/* asm6x: assemble each file named, on its own thread, into <name>.obj beside it or where -o
   says for a single file. The warnings and errors of every job are printed after all have
   joined, each line as file: line N: message, and the exit status is the number of files
   that failed - a warning is a mended value, as asm6x mends it, not a failure. */

static int usage()
{
    fprintf(stderr, "usage: asm6x file.s ... [-o out.obj]\n"
                    "       one thread per file; -o names the object of a single file\n");
    return 2;
}

int main(int argc, char **argv)
{
    std::vector<std::string> inputs;
    std::string output;
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-o") == 0 && i + 1 < argc) output = argv[++i];
        else if (strcmp(argv[i], "--version") == 0) { printf("\xc2\xa9" "2026 G. R. Akhtar - asm6x 0.2, a TMS320C6000 assembler writing TI ELF\n"); return 0; }
        else if (argv[i][0] == '-') return usage();
        else inputs.push_back(argv[i]);
    }
    if (inputs.empty()) return usage();
    if (!output.empty() && inputs.size() != 1) { fprintf(stderr, "asm6x: -o names one object, for one input\n"); return 2; }
    std::vector<Assembler *> jobs;
    for (size_t i = 0; i < inputs.size(); i++) {
        std::string out = output;
        if (out.empty()) {
            out = inputs[i];
            size_t dot = out.find_last_of('.'), slash = out.find_last_of("/\\");
            if (dot != std::string::npos && (slash == std::string::npos || dot > slash)) out.erase(dot);
            out += ".obj";
        }
        jobs.push_back(new Assembler(inputs[i], out));
    }
    std::vector<std::thread> threads;
    for (size_t i = 0; i < jobs.size(); i++) {
        Assembler *job = jobs[i];
        threads.push_back(std::thread([job]() {
            try { job->run(); }
            catch (const std::exception &e) { job->fail(std::string("internal: ") + e.what()); }
        }));
    }
    for (size_t i = 0; i < threads.size(); i++) threads[i].join();
    int failed = 0;
    for (size_t i = 0; i < jobs.size(); i++) {
        const std::vector<std::string> &w = jobs[i]->warnings();
        for (size_t k = 0; k < w.size(); k++) fprintf(stderr, "%s: %s\n", inputs[i].c_str(), w[k].c_str());
        const std::vector<std::string> &e = jobs[i]->errors();
        if (!e.empty()) failed++;
        for (size_t k = 0; k < e.size(); k++) fprintf(stderr, "%s: %s\n", inputs[i].c_str(), e[k].c_str());
        delete jobs[i];
    }
    return failed;
}

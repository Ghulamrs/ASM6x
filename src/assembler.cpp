#include "asm.h"

#include <fstream>

Assembler::Assembler(const std::string &in, const std::string &out) : input(in), output(out)
{
}

/* one job: read the file, run the target over it until the layout settles, resolve the
   fixups, write the object. A pass sees every forward label as the previous pass placed
   it, so two passes place everything and a third confirms nothing moved. */
bool Assembler::run()
{
    std::ifstream f(input.c_str());
    if (!f) { unit.errors.push_back(input + ": cannot open"); return false; }
    std::vector<std::string> lines;
    std::string text;
    while (std::getline(f, text)) {
        if (!text.empty() && text[text.size() - 1] == '\r') text.erase(text.size() - 1);
        lines.push_back(text);
    }
    size_t slash = input.find_last_of("/\\");
    unit.source = slash == std::string::npos ? input : input.substr(slash + 1);

    C6xTarget target;
    std::vector<Token> tokens;
    for (int pass = 1; ; pass++) {
        unit.begin_pass(pass);
        target.begin_pass(pass);
        for (size_t i = 0; i < lines.size() && !target.finished(); i++) {
            unit.line = (int)i + 1;
            std::string err;
            if (!split_line(lines[i], tokens, err)) { unit.error(err); continue; }
            if (!tokens.empty()) target.statement(unit, tokens);
        }
        target.end_of_file(unit);
        unit.resolve();
        if (!unit.moved() && pass > 1) break;
        if (pass >= 50) { unit.error("the layout did not settle in 50 passes"); break; }
    }
    if (!unit.errors.empty()) return false;
    std::string err;
    if (!write_elf(unit, output, err)) { unit.errors.push_back(err); return false; }
    return true;
}

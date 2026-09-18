// exceptions in several functions, a virtual hierarchy, statics with constructors, strings
#include <cstdio>
#include <string>
struct Base { virtual ~Base() {} virtual int f(int x) { return x + 1; } };
struct Derived : Base { int f(int x) { return x * 2; } };
struct Counter { int n; Counter() : n(7) {} ~Counter() { printf("bye %d\n", n); } };
static Counter global_counter;
int thrower(int x) { if (x > 3) throw std::string("too big"); return x; }
int catcher(int x) { try { return thrower(x); } catch (const std::string &s) { printf("caught %s\n", s.c_str()); return -1; } catch (...) { return -2; } }
int main() {
    Derived d; Base *b = &d;
    printf("%d %d %d\n", b->f(5), catcher(2), catcher(9));
    return 0;
}

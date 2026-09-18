# asm6x: built like the compilers and the emulator it stands beside - C++14,
# -Wall -Wextra -Werror -pedantic, objects outside the checkout, the program
# where BINDIR says. RStudio's workspace.mk calls this with BINDIR=bin and
# OBJDIR=bin/obj/asm6x so that asm6x.exe lands beside RStudio.exe.
ifeq ($(origin CXX),default)
  ifneq ($(shell command -v clang++ 2>/dev/null),)
    CXX := clang++
  else
    CXX := g++
  endif
endif
CXXFLAGS = -std=c++14 -O2 -g -Wall -Wextra -Werror -pedantic -pthread
SRCS     = $(filter src/%.cpp,$(wildcard src/*.cpp))
OBJDIR  ?= ../build/ASM6x/obj
OBJS     = $(patsubst src/%.cpp,$(OBJDIR)/%.o,$(SRCS))
BINDIR  ?= build
TARGET   = $(BINDIR)/asm6x.exe

all: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p $(BINDIR)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

$(OBJDIR)/%.o: src/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@

-include $(OBJS:.o=.d)

test: $(TARGET)
	ASM=$(TARGET) sh tests/run.sh

clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: all test clean

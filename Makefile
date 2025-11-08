# Compiler & Tools
CC      := clang
RM      := rm -rf
CFLAGS  := -Wall -O3
ARGS    := -c -o

# Directories
SRCDIR   := src
BUILDDIR := build
BINDIR   := bin
TARGET   := $(BINDIR)/mmorpgc
HELPER	 := helper/object.awk helper/object.txt
UNHELPER := helper/map.gv helper/map.png include/object.h src/object.c

# Sources & Objects for Main Build
SRC := $(shell find $(SRCDIR) -type f -name "*.c")
OBJ  := $(patsubst $(SRCDIR)/%.c,$(BUILDDIR)/%.o,$(SRC))

# Includes
INC := -I include -I $(SRCDIR)

# Rules
$(TARGET): $(OBJ)
	@echo "Linking main ..."
	@mkdir -p $(BINDIR)
	$(CC) $(OBJ) -o $(TARGET)

$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	@echo "Building $<..."
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $(INC) $(ARGS) $@ $<

clean:
	$(RM) $(BUILDDIR) $(BINDIR)
	$(RM) $(UNHELPER)
	
generateObj:
	awk -v pass=h -f $(HELPER) > include/object.h
	awk -v pass=c1 -f $(HELPER) > src/object.c
	awk -v pass=c2 -f $(HELPER) >> src/object.c
	awk -f helper/map.awk helper/object.txt > helper/map.gv

graph:
	dot -Tpng -o helper/map.png helper/map.gv
	
format:
	clang-format -i $(wildcard */*.c) $(wildcard */*.h)

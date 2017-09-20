CC=gcc
DEPS = EdgeListFunctions.h EdgeNode.h Graph.h VertexListFunctions.h VertexNode.h
ODIR=make_obj
BDIR=make_bin

_OBJ = $(patsubst %.h,%.o,$(DEPS)) 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c
	$(CC) -c -o $@ $<

main: main.c $(OBJ)
	$(CC) -o $@ $^

.PHONY:
	mkdir $(ODIR) $(BDIR)
IDIR =include
CC=clang
CFLAGS=-I$(IDIR)

ODIR=src/obj
SDIR=src

LIBS=

_DEPS =
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

OUTPUT = <<<OUTPUT>>>

$(ODIR)/%.o: $(SDIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<
		
debug: $(OBJ)
	$(CC) -g -o $(OUTPUT) $^ $(CFLAGS) $(LIBS) -rdynamic

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~

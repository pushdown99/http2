BIN=http2-client

all: $(BIN)

SRC= client.c
OBJ=$(SRC:.c=.o)

CFLAGS=-I/usr/local/include
LFLAGS= -lssl -lcrypto -levent -levent_openssl -L/usr/local/lib -lnghttp2

$(BIN): $(OBJ)
	$(CC) ${LDFLAGS} -o $@ $(OBJ) $(LFLAGS) url_parser.o

clean:
	rm -f $(BIN) $(OBJ) a.out core core.*


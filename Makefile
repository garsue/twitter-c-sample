CC = clang
CFLAGS = -Wall -std=gnu99
LDFLAGS = -L/usr/local/lib \
		  -loauth \
		  `curl-config --libs`
BINS = tweet
RM = rm -f
SRC = $(wildcard *.c)
OBJS = $(SRC:%.c=%.o)

all: $(BINS)

$(BINS): $(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(SRC)

clean:
	$(RM) $(OBJS) $(BINS)

.PHONY:all clean

src = $(wildcard ./src/*.c)
objects = $(patsubst %.c, %.o, $(src))
run:$(objects)
	@echo release...
	cc -o run $(objects)
	@echo success!
.PHONY:clean
clean:
	@echo clean...
	@rm -f run $(objects)
	@echo success!

Include_path = ./Inc
vpath %c ./Src
src_path = .\Src

cc = gcc

source = $(wildcard ./Src/*.c)  
header = $(wildcard ./Inc/*.h)
obj = $(source:.c=.o) 

variable = nancy-ali-taha-hossam.o
CFLAGS = -I$(Include_path)

all.exe : $(obj) $(variable)
	$(cc) $^ -o $@ 

# compile headers & sources
%.o : %.c 
	$(cc) -c $(CFLAGS) $< -o $@
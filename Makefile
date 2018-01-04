
o:= test.ml

bin= $(subst .ml,.bc,${o})

all: build run

build:
	jbuilder build $(bin)
buildall:
	jbuilder build  @install  @runtest
run:
	./_build/default/$(bin)  data.txt
clean:
	jbuilder clean	

help:
	echo "make o=filename.ml"



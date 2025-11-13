TOP = tb_adder

SRC_RTL = $(wildcard rtl/*.v rtl/*.sv)
SRC_TB = $(wildcard tb/*.v tb/*.sv)
SRC_CPP = main.cpp

SRC = $(SRC_RTL) $(SRC_TB) $(SRC_CPP)
EXE = V$(TOP)

all: run

$(EXE): $(SRC)
	verilator --cc --exe --build -j 0 $(SRC) --top-module $(TOP) -o $(EXE) --timing

run: $(EXE)
	./obj_dir/$(EXE)

clean:
	rm -rf obj_dir $(EXE) *.vcd

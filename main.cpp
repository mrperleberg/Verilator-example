#include "verilated.h"
#include "Vtb_adder.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vtb_adder* top = new Vtb_adder;
    while (!Verilated::gotFinish()) {
        top->eval_step();
        top->eval();
        Verilated::timeInc(1);  // Avança 1ns
    }
    delete top;
    return 0;
}

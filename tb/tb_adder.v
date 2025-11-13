`timescale 1ns / 1ps

module tb_adder;
    reg [3:0] a, b;
    wire [4:0] sum;
    integer i, j;

    adder dut (.a(a), .b(b), .sum(sum));

    initial begin
        $display("a  b  sum");
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i[3:0]; 
                b = j[3:0];
                #1;
                $display("%d %d %d", a, b, sum);
            end
        end
        $finish;
    end
endmodule

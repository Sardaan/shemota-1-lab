`timescale 1ns / 1ps

module main;

reg x1_in, x2_in, x3_in, x4_in,
x5_in, x6_in, x7_in, x8_in;

wire y1_out, y2_out, y3_out;

coder coder_1(
.x1(x1_in),
.x2(x2_in),
.x3(x3_in),
.x4(x4_in),
.x5(x5_in),
.x6(x6_in),
.x7(x7_in),
.x8(x8_in),

.y1(y1_out),
.y2(y2_out),
.y3(y3_out)
);

integer i;
reg [7:0] test_val_x;

initial begin


for (i=1; i<256; i=i*2) begin
test_val_x = i;
x1_in = test_val_x[0];
x2_in = test_val_x[1];
x3_in = test_val_x[2];
x4_in = test_val_x[3];
x5_in = test_val_x[4];
x6_in = test_val_x[5];
x7_in = test_val_x[6];
x8_in = test_val_x[7];

#10

$display ("x_1=%b, x_2=%b, x_3=%b, x_4=%b, x_5=%b, x_6=%b, x_7=%b, x_8=%b, test_x=%b, y_1=%b, y_2=%b, y_3=%b",
x1_in, x2_in, x3_in, x4_in,
x5_in, x6_in, x7_in, x8_in,
test_val_x, y1_out, y2_out, y3_out);

end

#10 $stop;

end

endmodule
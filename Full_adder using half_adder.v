// verilog code Full Adder
module full_adder (
	input a,b,cin, 
	output sum, c_out);
  //sum0=sum of 1st half adder, cout0=carry out of 1st half adder, cout1=carry out of 2nd half adder
	wire sum0,cout0, cout1; 

	half_adder a1(a,b,sum0,cout0);
	half_adder a2(sum0,cin,sum,cout1);
	or a3(c_out,cout1,cout0);
	
	
endmodule


module half_adder(
	input a,b,
	output sum,cout);
	assign sum = a^b;
	assign cout = a*b;
endmodule


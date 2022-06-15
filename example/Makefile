IVERILOG = iverilog
FLAG += -o

DUT = top.v
TB = tb

version : 
	$(IVERILOG) -v 

iverlog : 
	$(IVERILOG) $(FLAG) $(TB) $(DUT) $(TB).v

vvp : iverilog 
	vvp $(TB)

gtk : vvp 
	gtkwave $(TB).vcd

clean :
	@rm $(TB) $(TB.vcd)
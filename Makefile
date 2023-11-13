GHDL=ghdl
GTKWAVE=gtkwave
MODULE=module

all:
	$(GHDL) -s $(MODULE).vhd
	$(GHDL) -s $(MODULE)_tb.vhd

	$(GHDL) -a $(MODULE).vhd
	$(GHDL) -a $(MODULE)_tb.vhd
	
	$(GHDL) -e $(MODULE)_tb
	
	$(GHDL) -r $(MODULE)_tb --vcd=$(MODULE).vcd --stop-time=1us

	$(GTKWAVE) $(MODULE).vcd
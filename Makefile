GHDL=ghdl
GTKWAVE=gtkwave
FLAGS="--std=02"
MODULE=module

all:
	$(GHDL) -s $(FLAGS) $(MODULE).vhd
	$(GHDL) -s $(FLAGS) $(MODULE)_tb.vhd

	$(GHDL) -a $(FLAGS) $(MODULE).vhd
	$(GHDL) -a $(FLAGS) $(MODULE)_tb.vhd

	$(GHDL) -e $(FLAGS) $(MODULE)_tb

	$(GHDL) -r $(FLAGS) $(MODULE)_tb --vcd=$(MODULE).vcd --stop-time=1us

	$(GTKWAVE) $(MODULE).vcd
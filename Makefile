GHDL=ghdl
GTKWAVE=gtkwave
FLAGS="--std=02"
ADDRESS=./
MODULE=module

check:
	@echo "syntax check..."
	@$(GHDL) -s $(FLAGS) ${ADDRESS}${MODULE}.vhd
	@$(GHDL) -s $(FLAGS) ${ADDRESS}${MODULE}_tb.vhd

analyze: check
	@echo "analyze..."
	@$(GHDL) -a $(FLAGS) ${ADDRESS}${MODULE}.vhd
	@$(GHDL) -a $(FLAGS) ${ADDRESS}${MODULE}_tb.vhd

elaborate: analyze
	@echo "elaborate..."
	@$(GHDL) -e $(FLAGS) ${MODULE}_tb

run: elaborate
	@echo "run..."
	@$(GHDL) -r $(FLAGS) ${MODULE}_tb --stop-time=100ns --wave=${MODULE}.ghw

wave: run
	@echo "generating wave..."
	@$(GTKWAVE) ${MODULE}.ghw

clean:
	@echo "cleaning up..."
	@find . -type f \( -name "*.o" -o -name "*.cf" -o -name "*.ghw" -o -name "*.vcd" \) -delete

.PHONY: all check analyze elaborate run wave clean
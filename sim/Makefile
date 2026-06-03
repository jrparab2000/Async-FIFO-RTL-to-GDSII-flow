# sim/Makefile
VLOG = vlog
VLIB = vlib
WORK_DIR = work
FILE_LIST = ../files.f

lint:
	@if [ ! -d $(WORK_DIR) ]; then $(VLIB) $(WORK_DIR); fi
	$(VLOG) -lint -sv -work $(WORK_DIR) -f $(FILE_LIST) -l questa_lint.log

clean:
	rm -rf $(WORK_DIR) transcript *.log *.vcd
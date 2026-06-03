# lint/Makefile
WORK_DIR   ?= work
FILE_LIST  ?= files.f
VLOG_LINT_FLAGS ?= -lint -sv +acc -work $(WORK_DIR) -f $(FILE_LIST) -l ./logs/questa_lint.log
VLOG ?= vlog
create:
	@mkdir -p logs
	
lint:
	@echo "\n[INFO] Starting QuestaSim Linting..."
	$(VLOG) $(VLOG_LINT_FLAGS)
	@echo "[SUCCESS] Linting complete.\n"

all: create lint

clean:
	rm -rf logs work
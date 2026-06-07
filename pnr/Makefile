# ==============================================================================
# OpenROAD PnR Flow Master Automation Environment
# ==============================================================================

# Pull in your environment variable configurations
include config.mk

.PHONY: all init floorplan placement cts routing parasitics signoff clean gui

# ------------------------------------------------------------------------------
# Default Top-Level Target: Runs the entire flow from scratch autonomously
# ------------------------------------------------------------------------------
all: setup_dirs signoff
	@echo "======================================================================"
	@echo " [SUCCESS] PnR Layout Complete! GDSII exported to $(DB_FINAL)"
	@echo "======================================================================"

# Quick setup recipe to ensure environment infrastructure directories exist
setup_dirs:
	@mkdir -p $(RESULTS_DIR) $(LOGS_DIR) $(NETLIST_DIR) $(BACKUPS_DIR) $(LOGS_DIR)

# ------------------------------------------------------------------------------
# Step-by-Step Layout Execution Targets
# ------------------------------------------------------------------------------

# Step 1: Design Ingestion and Database Link
init: setup_dirs $(DB_INIT)
$(DB_INIT): $(INIT_TCL) $(CONFIG_TCL)
	@echo "==> [PnR] Running Step 1: Design Initialization..."
	$(OPENROAD_EXE) -no_init -exit $(INIT_TCL) > $(LOGS_DIR)/1_init.log 2>&1

# Step 2: Floorplan Boundary Realization and PDN Generation
floorplan: init $(DB_FLOORPLAN)
$(DB_FLOORPLAN): $(FLOORPLAN_TCL) $(DB_INIT)
	@echo "==> [PnR] Running Step 2: Floorplanning & Power Grid..."
	$(OPENROAD_EXE) -no_init -exit $(FLOORPLAN_TCL) > $(LOGS_DIR)/2_floorplan.log 2>&1

# Step 3: Global and Detailed Cell Placement
placement: floorplan $(DB_PLACEMENT)
$(DB_PLACEMENT): $(PLACEMENT_TCL) $(DB_FLOORPLAN)
	@echo "==> [PnR] Running Step 3: Standard Cell Placement..."
	$(OPENROAD_EXE) -no_init -exit $(PLACEMENT_TCL) > $(LOGS_DIR)/3_placement.log 2>&1

# Step 4: Clock Tree Synthesis
cts: placement $(DB_CTS)
$(DB_CTS): $(CTS_TCL) $(DB_PLACEMENT)
	@echo "==> [PnR] Running Step 4: Clock Tree Synthesis (CTS)..."
	$(OPENROAD_EXE) -no_init -exit $(CTS_TCL) > $(LOGS_DIR)/4_cts.log 2>&1

# Step 5: Global and Detailed Metal Routing
routing: cts $(DB_ROUTING)
$(DB_ROUTING): $(ROUTING_TCL) $(DB_CTS)
	@echo "==> [PnR] Running Step 5: Interconnect Routing..."
	$(OPENROAD_EXE) -no_init -exit $(ROUTING_TCL) > $(LOGS_DIR)/5_routing.log 2>&1

# Step 6: Parasitic Extraction (RCX Extraction)
parasitics: routing $(DB_PARASITICS)
$(DB_PARASITICS): $(PARASITICS_TCL) $(DB_ROUTING)
	@echo "==> [PnR] Running Step 6: Parasitic RC Extraction..."
	$(OPENROAD_EXE) -no_init -exit $(PARASITICS_TCL) > $(LOGS_DIR)/6_parasitics.log 2>&1

# Step 7: Timing Sign-off and Final GDS Export
signoff: parasitics $(DB_FINAL)
$(DB_FINAL): $(SIGNOFF_TCL) $(DB_PARASITICS)
	@echo "==> [PnR] Running Step 7: Final Timing Sign-off & GDS Generation..."
	$(OPENROAD_EXE) -no_init -exit $(SIGNOFF_TCL) > $(LOGS_DIR)/7_signoff.log 2>&1

# ------------------------------------------------------------------------------
# Diagnostic and Cleanup Helper Recipes
# ------------------------------------------------------------------------------

# Interactive Visualizer: Opens the OpenROAD GUI with the latest successful step
gui: setup_dirs
	@echo "==> Launching interactive layout database visualizer..."
	@if [ -f $(DB_ROUTING) ]; then \
		$(OPENROAD_EXE) -gui $(DB_ROUTING); \
	elif [ -f $(DB_PLACEMENT) ]; then \
		$(OPENROAD_EXE) -gui $(DB_PLACEMENT); \
	elif [ -f $(DB_FLOORPLAN) ]; then \
		$(OPENROAD_EXE) -gui $(DB_FLOORPLAN); \
	else \
		$(OPENROAD_EXE) -gui; \
	fi

# Wipe out intermediate results and system logs to reset the environment
clean:
	@echo "==> Purging layout generation logs and intermediate targets..."
	rm -rf $(RESULTS_DIR) $(LOGS_DIR) $(NETLIST_DIR) $(BACKUPS_DIR) $(LOGS_DIR)
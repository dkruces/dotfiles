# SPDX-License-Identifier: MIT
DOTFILES_DIR := .config
AVAILABLE_TARGETS := $(notdir $(wildcard $(DOTFILES_DIR)/*))
MAKEFLAGS += --no-print-directory
TARGET_DIR ?= ~/.config

.PHONY: all
all: $(TARGET)

.PHONY: help
help:
	@echo "Available targets:"
	@for dir in $(AVAILABLE_TARGETS); do \
		echo "  $$dir"; \
	done

%:
	@if [ -d "$(DOTFILES_DIR)/$*" ]; then \
		mkdir --verbose --parent $(TARGET_DIR)/$*; \
		cd .config; \
		stow --verbose --target $(TARGET_DIR)/$* $*; \
	else \
		echo "Error: $* not found"; \
		make help; \
	fi

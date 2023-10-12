.PHONY: help
.DEFAULT_GOAL := help

help:
	@echo TODO: write help for makefile


##########
# python #
##########


####################
# docker container #
####################

CONTAINER_NAME := python_container

container:

	@if ! docker container inspect $(CONTAINER_NAME) >/dev/null 2>&1; then \
		docker compose up --build --detach; \
	else \
		echo "$(CONTAINER_NAME) already exists"; \
	fi

	@docker container exec -it $(CONTAINER_NAME) /bin/bash

clean_container:

	@if docker container inspect $(CONTAINER_NAME) >/dev/null 2>&1; then \
		docker compose down; \
	else \
		echo "$(CONTAINER_NAME) doesn't exists"; \
	fi

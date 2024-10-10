## -----------------------------------------------------------------------------------------------
## This is the Makefile which contains the recipes that define how to interact with the
## repository's YAML files. Is is sort of a habit of mine to create a Makefile.
## 
# ----------------------------------------- Variables -----------------------------------------

## ----------------------------------------- Commands -----------------------------------------
help:		## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

up:		## Run Oracle xe 11g ~~and SQLDeveloper~~
	docker compose up -d

down:		## Stop Oracle ~~and SQLDeveloper~~
	docker compose down

delete:		## Stop and remove containers and networks
	docker compose down --volumes

shell:		## Run a shell in the oracle container
	docker exec -it oracledb /bin/bash

sqlplus:	## Run sqlplus in the oracle container and connect as system/oracle
	docker exec -it oracledb sqlplus system/oracle

.DEFAULT:
	@echo Unknown command $@, try make help


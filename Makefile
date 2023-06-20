TERRAFORM_ROOT	= ./terraform
INFRA_DIR		= $(TERRAFORM_ROOT)/infra

GREEN := \033[0;32m
SMTH := \033[0;33m
NC := \033[0m

deploy:
	@terraform -chdir=$(TERRAFORM_ROOT) init
	@terraform -chdir=$(TERRAFORM_ROOT) plan -out=tfplane
	@terraform -chdir=$(TERRAFORM_ROOT) apply -auto-approve tfplane

build-infra:
	@terraform -chdir=$(INFRA_DIR) init && \
	terraform -chdir=$(INFRA_DIR) apply

test:
	@echo 'Still not implemented'

destroy:
	@terraform -chdir=$(TERRAFORM_ROOT) destroy -auto-approve

help:
	@echo "$(SMTH)Help:"
	@echo "	$(GREEN)make deploy or make$(NC)		Deploy AWSpider."
	@echo "	$(GREEN)make build-infra$(NC)		Build infrastructre (vpc, subnets ...)."
	@echo "	$(GREEN)make apply$(NC)			Terraform validate and apply any configuration/package changes."
	@echo "	$(GREEN)make require$(NC)			Install the dependencies and requirement."
	@echo "	$(GREEN)make destroy$(NC)			Destroy and delete all the resources"
	@echo "	$(GREEN)make destroy-infra$(NC)		Destroy and delete the infra"
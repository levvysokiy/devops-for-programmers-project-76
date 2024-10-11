VAULT_FILE=./group_vars/webservers/vault.yml
VAULT_PASS_FILE=.vault_pass


install-deps:
	ansible-galaxy install -r requirements.yml --force
# Зашифровать файл
encrypt:
	ansible-vault encrypt --vault-password-file $(VAULT_PASS_FILE) $(VAULT_FILE)
# Расшифровать файл
decrypt:
	ansible-vault decrypt --vault-password-file $(VAULT_PASS_FILE) $(VAULT_FILE)
prepare-servers:
	ansible-playbook playbook.yml --tags=prepare-servers --vault-password-file $(VAULT_PASS_FILE)
deploy:
	ansible-playbook playbook.yml --tags=deploy --vault-password-file $(VAULT_PASS_FILE)
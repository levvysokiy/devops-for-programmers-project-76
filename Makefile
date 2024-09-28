VAULT_FILE=./group_vars/webservers/vault.yml
VAULT_PASS_FILE=.vault_pass

# Зашифровать файл
encrypt:
	ansible-vault encrypt --vault-password-file $(VAULT_PASS_FILE) $(VAULT_FILE)
# Расшифровать файл
decrypt:
	ansible-vault decrypt --vault-password-file $(VAULT_PASS_FILE) $(VAULT_FILE)
prepare-servers:
	ansible-playbook playbook.yml
deploy:
	ansible-playbook deployment.yml --vault-password-file $(VAULT_PASS_FILE)
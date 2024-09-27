prepare-servers:
	ansible-playbook playbook.yml
deploy:
	ansible-playbook deployment.yml	
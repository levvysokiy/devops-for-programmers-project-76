### Hexlet tests and linter status:
[![Actions Status](https://github.com/levvysokiy/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/levvysokiy/devops-for-programmers-project-76/actions)

### Требования к системе
- ansible
- make

## Ссылка на приложение:
https://levvysokiy.blog

## Подготовка к деплою

1. Установите Ansible
2. Установите необходимые роли и коллекции:
```bash
ansible-galaxy install -r requirements.yml
```
3. Подготовьте файл инвентаризации inventory.ini, пример уже предоставлен в проекте.


## Запуск проекта


Команда для подготовки серверов:
```bash
make prepare-servers
```

Команда для деплоя приложения:
```bash
make deploy
```
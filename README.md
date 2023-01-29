
# akjumla_infra

akjumla Infra repository

# HW5

## Connecting to someinternalhost by one command

ssh -J username@bastion username@someinternalhost

## Create .ssh/config for one-command connection: ssh someinternalhost

    Host 10.128.0.9
        HostName someinternalhost
        User appuser

        ProxyJump appuser@51.250.82.95

bastion_IP = 51.250.82.95
someinternalhost_IP = 10.128.0.9

# HW-06

testapp_IP = 51.250.77.217
testapp_port = 9292

# HW-07

## Create Packer templates

- Создан ubuntu16.json файл с шаблонам
- Создан immutable.json файл с полным образом
- Создан файл variables.json для параметризации шаблонов
- Создан образ на основе ubuntu16.json
- Создан образ на основе immutable.json
- Исправлена ошибка в примере файла ubuntu16.json, добавлена недостающая опция use_ipv4_nat = true

Валидация шаблона
`packer validate  -var-file variables.json immutable.json`

Создание шаблона
`packer build  -var-file variables.json immutable.json `


# HW-08

## Terraform 1

- Установлен и настроен terraform и провайдер yandex. Версия terraform 0.12.8,  provider.yandex v0.56.0
- Добавлено описание инстанса redit-app
- Добавлены provisioner для деплоя и запуска приложения
- Добалены выводы переменных внешних ip адресов
- Добавлен connection ssh с подстановкой приватного ключа
- Добавлена переменная count для создания нескольких инстансов redit-app и обхода проблемы дублирования кода.


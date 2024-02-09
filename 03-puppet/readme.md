# Домашнее задание 

- В репозитории `devops-hometasks` создайте директорию `03-puppet`
- В созданной директории создайте Vagrantfile, создающий 3 виртуальные машины, основанные на Centos:
  - master.puppet - сервер Puppet
	  - Должен быть установлен сервер Puppet
	  - Должен быть установлен r10k. Его следует настроить на использование вашего puppet-репозитория.
  -	slave1.puppet, slave2.puppet
	  - Должен быть установлен puppet-agent. Настройте его на master.puppet.
- Все настройки виртуальных машин должны быть реализованы с помощью ansible.
- Все настройки должны быть описаны в одном playbook, разделение действий по машинам должно происходить через inventory. (С помощью ansible настраивается необходимый минимум для запуска puppet)

- Спомощью Puppet настройте сервер slave1.puppet для отображения **static** сайта
- Спомощью Puppet настройте сервер slave2.puppet для отображения **dynamic** сайта

- Добавьте к Vagrantfile  ещё одну виртуальную машину с именем mineserver.puppet
- Puppet на новой машине должен настраиваться автоматически при развертывании виртуальной машины с помощью Ansible
- В конфигурацию Puppet из прошлого домашнего задания внесите следующие изменения:
  - Установите модуль nginx на машине master.puppet и настройте его в качестве reverse proxy для slave1.puppet и slave2.puppet.
  - Разработайте модуль Puppet, скачивающий и устанавливающий сервер Minecraft на машину mineserver.puppet
  - Вся настройка сервера Minecraft должна производиться модулем Puppet
  - Данные устанавливаемого сервера должны располагаться в директории `/opt/minecraft`
  - Сервер Minecraft должен скачиваться с [сайта](https://www.minecraft.net/ru-ru/download/server/).
  - Также необходимо создать [systemd-сервис](https://www.shellhacks.com/ru/systemd-service-file-example/) для автозапуска сервера.


Puppet Repository: https://github.com/defau1t17/puppet-test

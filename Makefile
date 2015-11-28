all: install_role vagrant_up

install_role:
	sudo ansible-galaxy install -fr $(CURDIR)/roles.yml

vagrant_up:
	vagrant up

.PHONY: all

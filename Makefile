all:
	@echo "Використай make install, make uninstall або make update"

install:
	@echo "Встановлення Askistrap в /opt"
	sudo mkdir /opt/Askistrap
	sudo cp -r * /opt/Askistrap
	sudo ln -sf /opt/Askistrap/askistrap.sh /bin/askistrap
	sudo chmod +x /bin/askistrap
	clear && echo "Askistrap було встановлено"
	
uninstall:
	@echo "Видалення Askistrap"
	sudo rm -rf /opt/Askistrap
	sudo rm /bin/askistrap
	clear && echo "Askistrap було видалено"

update:
	@echo "Оновлення Askistrap"
	sudo rm -rf /opt/Askistrap
	sudo mkdir /opt/Askistrap
	sudo cp -r * /opt/Askistrap
	sudo ln -sf /opt/Askistrap/askistrap.sh /bin/askistrap
	sudo chmod +x /bin/askistrap
	clear && echo "Askistrap було оновлено"

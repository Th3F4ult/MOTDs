.PHONY: install

install:
	@echo
	@echo "If this fails you're likely not running as root"
	@echo "The script and the service will now be installed."
	@echo
	install -m 755 random_motd_boot.sh /usr/local/bin/random_motd_boot.sh
	install -m 644 motd.service /etc/systemd/system/motd.service
	@echo
	@echo "You should run systemctl daemon-reload if you wanna enable it now"
	@echo "Enable the motd changer by doing systemctl enable --now motd"
	@echo

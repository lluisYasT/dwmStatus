PREFIX=/usr/local
ifeq "$(HOSTNAME)" "$(enigma)"
	BATTERY=-DBATTERY
endif

dwmStatus: status.c
	gcc $(BATTERY) -o dwmStatus status.c -lX11

install: dwmStatus
	@echo "Installing dwmStatus in ${PREFIX}/bin"
	@install dwmStatus ${PREFIX}/bin/

uninstall:
	@rm ${PREFIX}/bin/dwmStatus

clean:
	rm dwmStatus

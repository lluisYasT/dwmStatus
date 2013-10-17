PREFIX=/usr/local

dwmStatus: status.c
	gcc -o dwmStatus status.c -lX11

install: dwmStatus
	@echo "Installing dwmStatus in ${PREFIX}/bin"
	@install dwmStatus ${PREFIX}/bin/

uninstall:
	@rm ${PREFIX}/bin/dwmStatus

clean:
	rm dwmStatus


all:

install:
	echo install ${DESTDIR}
	install -d ${DESTDIR}/etc/udev/rules.d/
	install --mode=0440 50-no-suspend-on-lid-close-on-ac.rules ${DESTDIR}/etc/udev/rules.d/
	install -d ${DESTDIR}/etc/systemd/system/
	install --mode=0440 no-suspend-on-lid-close.service       ${DESTDIR}/etc/systemd/system/
	install --mode=0440 no-suspend-on-lid-close-on-ac.service ${DESTDIR}/etc/systemd/system/
	install -d ${DESTDIR}/sbin
	install no-suspend-on-ac ${DESTDIR}/sbin

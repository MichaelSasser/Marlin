export PATH := ${CURDIR}/buildroot/bin:${CURDIR}buildroot/share/tests/:$(PATH)

all:
	platformio run --environment=LPC1768

clean:
	platformio run --target=clean

test:
	${CURDIR}/buildroot/share/tests/run_tests ${CURDIR} LPC1768

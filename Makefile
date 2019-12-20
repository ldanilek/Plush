main: main.rs
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} rust:alpine rustc main.rs

run: main
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} rust:alpine ./main

dev: main
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} rust:alpine

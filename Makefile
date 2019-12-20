
main: .docker main.rs
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} plush_dev rustc main.rs

run: .docker main
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} plush_dev ./main

.docker: Dockerfile
	docker build -t plush_dev . && touch .docker

dev: .docker main
	docker run -it -v ${CURDIR}:${CURDIR} -w ${CURDIR} plush_dev

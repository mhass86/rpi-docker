DOCKER_IMAGE_NAME=mhass/pi:dhcp
ARGS="--cap-add=NET_ADMIN"

build: Dockerfile
	docker build -t ${DOCKER_IMAGE_NAME} .

clean_build: Dockerfile
	docker build --no-cache=true -t ${DOCKER_IMAGE_NAME} .

push: build
	docker push ${DOCKER_IMAGE_NAME}

run: build
	docker run --cap-add=NET_ADMIN -it --rm ${DOCKER_IMAGE_NAME} ${ARGS}

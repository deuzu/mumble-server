.PHONY: all docker clean

all: docker

docker:
	@docker-compose up --detach --remove-orphans

clean:
	@docker-compose stop
	@docker-compose rm --force

.PHONY: install clean

install:
	@docker-compose up --detach --remove-orphans

update:
	@docker-compose pull
	@docker-compose up --force-recreate --build --detach
	@docker image prune --force

clean:
	@docker-compose stop
	@docker-compose rm --force

.PHONY: install clean

install:
	@docker-compose up --detach --remove-orphans

clean:
	@docker-compose stop
	@docker-compose rm --force

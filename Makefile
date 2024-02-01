init:
	cp /.env.dist /.env

start:
	docker compose up -d
	docker compose logs -f

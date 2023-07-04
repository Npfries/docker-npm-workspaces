start:
	cp ./package-lock.json ./apps/server/
	docker compose -f docker-compose.yml -f docker-compose.start.yml up -d --build
	rm ./apps/server/package-lock.json

dev:
	cp ./package-lock.json ./apps/server/
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
	rm ./apps/server/package-lock.json
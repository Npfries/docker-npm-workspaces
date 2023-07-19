start:
	cp ./package-lock.json ./apps/project-a/
	cp ./package-lock.json ./apps/project-b/

	docker compose -f docker-compose.yml -f docker-compose.start.yml up -d --build

	rm ./apps/project-a/package-lock.json
	rm ./apps/project-b/package-lock.json

	docker rmi $$(docker images -f "dangling=true" -q)

dev:
	cp ./package-lock.json ./apps/project-a/
	cp ./package-lock.json ./apps/project-b/

	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build

	rm ./apps/project-a/package-lock.json
	rm ./apps/project-b/package-lock.json
	
	docker rmi $$(docker images -f "dangling=true" -q)
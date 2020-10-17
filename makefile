build:
	docker build -t elliottregan/gridsome-netlifycms-docker-starter . $(c)

run:
	docker run --rm -it \
	--name portfolio \
	-p 8080:8080 \
	-v `pwd`:/app \
	-v /app/node_modules \
	elliottregan/gridsome-netlifycms-docker-starter $(c)

update:
	make run c="npm update"

audit-fix:
	make run c="npm audit fix"
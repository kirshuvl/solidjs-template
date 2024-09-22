DC = docker compose -p solidjs-frontend
SOLIDJS_FILE_DEVELOPMENT = docker/development.yaml
SOLIDJS_FILE_PRODUCTION = docker/production.yaml

SOLIDJS_CONTAINER = frontend


EXEC = docker exec -it
LOGS = docker logs
ENV = --env-file .env

.PHONY: app
app: 
	${DC} -f ${SOLIDJS_FILE_DEVELOPMENT} up --build -d

.PHONY: app-down
app-down: 
	${DC} -f ${SOLIDJS_FILE_DEVELOPMENT} down

.PHONY: production
production: 
	${DC} -f ${SOLIDJS_FILE_PRODUCTION} up --build -d

.PHONY: production-down
production-down: 
	${DC} -f ${SOLIDJS_FILE_PRODUCTION} down

.PHONY: app-logs
app-logs: 
	${LOGS} ${SOLIDJS_CONTAINER} -f

.PHONY: lint
lint:
	yarn run check:code:fix && lint:styles:fix

.PHONY: check
check:
	${DC} ps
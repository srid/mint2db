all:
	docker build -t srid/mint2db .

shell:
	docker run --rm -it srid/mint2db bash

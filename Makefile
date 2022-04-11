build:
	docker build -t aiyijing/x11-novnc-docker:latest .

run: build
	docker run --rm -p 18080:8080 aiyijing/x11-novnc-docker:latest

shell: build
	docker run --rm -ti -p 18080:8080 aiyijing/x11-novnc-docker:latest bash

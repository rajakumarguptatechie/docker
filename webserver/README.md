This is a simple webserver container.
Created via Dockerfile in this repo.

# To spin up container using this image, use either commands:
docker run -d -p 80:80  rajakumargupta/webserver:latest
docker run -d --rm --name <nameOfYOurChoice> --hostname <hostNameOfYOurChoice> -p 80:80 -v ${PWD}:/var/www/html rajakumargupta/webserver:latest

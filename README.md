# Locadora Vermelha Paga Nois

This project can be running local with docker and is project is just for fun.

Just you need to write implementation and run tests.

## Running

First all, you need build a docker image if you already not made.

* Run this command `docker build -t custom_imagename`.

Now, you can run this command:

`docker run -it --rm -v "$PWD:/usr/src/app/src" "$PWD:/usr/src/app/tests" custom_imagename phpunit`.

All vendor dependencies, there are already in custom_imagename. Composer already run in `docker build` command.
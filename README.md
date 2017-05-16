# My Docker Inside

This package contains a simple Dockerfile that I can load to create my basic environment.

## Intallation

The package is not self-consistent: you have to intall [docker](https://docs.docker.com/engine/installation/) and git before.

Then you can load the Dockerfile of this repository

    git clone https://github.com/bilardi/my-docker-inside.git

And build the docker container

    cd my-docker-inside
    docker build -t my-docker-inside .
    docker run -dit --privileged --name my-environment my-docker-inside

## Uninstallation

If you want delete docker container

    docker stop my-environment; docker rm my-environment

If you want delete docker image

    docker rmi my-docker-inside

## Usage

You can attach it by shell

    docker exec -it my-environment bash

There are some docker aliases installed in ~/.bash_aliases

    mysql
    mysqldump
    psql

## License

This package is released under the MIT license.  See [LICENSE](LICENSE) for details.

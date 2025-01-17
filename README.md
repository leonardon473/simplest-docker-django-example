# Simple django docker project
This project is based on [The Simplest Docker + Django Example](https://github.com/cyface/simplest-docker-django-example)

## Commands

### Run the project:
- `cp dev.env .env` This command create test.env file.

- `make up` This will be build, run the docker container and open a bash from the
  container. Use Ctrl-D to stop.

- `./dev up` One time you are in the container this command will run the django project.
  Ctrl-C to stop.

- `./dev test` Run all the project tests.


## About building local environment with Linux systems

If you bring up the local environment in a linux system, maybe you can get some problems about users permissions when working with Docker.
So we give you a little procedure to avoid problems with users permissions structure in Linux.:

1- Delete containers

```
# or docker rm -f $(docker ps -aq) if you don't use docker beyond the test
make down
```

2- Give permissions to your system users to use Docker

```
## Where ${USER} is your current user
sudo usermod -aG docker ${USER}
```

3- Confirm current user is in docker group

```
## If you don't see docker in the list, then you possibly need to log off and log in again in your computer.
id -nG
```

4-  Get the current user id

```
## Commonly your user id number is near to 1000
id -u
```

5- Replace user id in Dockerfiles by your current user id

Edit `Dockerfile` and replace 1000 by your user id.

6- Rebuild the local environment

```
make rebuild
make up
```
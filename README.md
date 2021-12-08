# My Dinner Backend

This project is based on [The Simplest Docker + Django Example](https://github.com/cyface/simplest-docker-django-example)

### Commands

Build the Dockerfile into a runnable image:
- `docker build`

Run the image you just built, exposing port 8000 and setting the `MAGIC_MESSAGE` environment variable:
- `docker run -p 8000:8000 -e MAGIC_MESSAGE="Docker command line" docker-simple`
- Ctrl-C to stop

Use Docker Compose to do the same thing:
- `docker-compose up`
- Ctrl-C to stop

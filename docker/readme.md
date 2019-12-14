# Docker Container

## Overview

You need to install [docker desktop](https://www.docker.com/products/docker-desktop) first. If you're on Windows, you must have Microsoft Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.

The course's docker image is available from https://hub.docker.com/u/gboeing

## Usage

### Run the docker container

*On Windows* open a command prompt, change directory to location of notebook file, and run:

```
docker run --rm -it -p 8888:8888 -v "%cd%":/home/jovyan/work gboeing/ppd534:latest
```

*On Mac/Linux* open a terminal window, change directory to location of notebook file, and run:

```
docker run --rm -it -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/ppd534:latest
```

This runs the container ephemerally, interactively, exposing container's port 8888 on host machine's port 8888, mounting the current directory on the host machine as the container's working directory, and launching jupyter lab.

### Access Jupyter in this container

Once the container is running as described above, open your computer's web browser and visit [http://localhost:8888](http://localhost:8888)

When you're done, to stop the container, go to your command prompt/terminal window where Docker is running and hit ctrl + c. Do not just close your terminal window without stopping Docker first!

# Modules

This course is composed of weekly learning modules. Many of these modules include a Jupyter notebook lecture.

## How to launch a Jupyter notebook lecture

You have two options. The first (Docker) is preferred. If you trouble with the first, you can fallback on the second option, which is easier and reliable but has significant limitations. Details follow.

### Option 1: Docker

  1. Make sure you've completed the initial software setup instructions
  2. Open a terminal window, change directories to the `ppd534` folder on your desktop and run `git pull` to bring your local version up to date with the server
  3. On *Windows*, run `docker run --rm -it -p 8888:8888 -v "%cd%":/home/jovyan/work gboeing/ppd534:latest`
  4. On *Mac*, run `docker run --rm -it -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/ppd534:latest`
  5. In your web browser, visit http://localhost:8888
  6. When you're all done using Jupyter: to stop the running container, go to your terminal window where docker is running and hit `ctrl + c`. Do not just close your terminal window without stopping Docker first! If you, you'll have to restart your computer before you can run docker again.

### Option 2: Binder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gboeing/ppd534/master?urlpath=lab)

This option has two key drawbacks. First, all the notebooks are read-only, meaning that you cannot save any changes you make, notes you take, or new files you create. Second, they timeout after about 10 minutes of activity.

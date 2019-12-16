# Modules

This course is composed of weekly learning modules. Many of these modules include a Jupyter notebook lecture.

## How to run a lecture Jupyter notebook

### Option 1: Docker

*If this is your first time setting up*

  1. Make sure you've installed docker and git.
  2. Open a terminal window, change directories to your desktop, and run `git clone https://github.com/gboeing/ppd534.git`

*All subsequent times*

  1. Open a terminal window, change directories to the `ppd534` folder on your desktop and run `git pull` to bring your local version up to date with the server
  2. On *Windows*, run `docker run --rm -it -p 8888:8888 -v "%cd%":/home/jovyan/work gboeing/ppd534:latest`
  3. On *Mac*, run `docker run --rm -it -p 8888:8888 -v "$PWD":/home/jovyan/work gboeing/ppd534:latest`
  4. In your web browser, visit http://localhost:8888
  5. When you're all done using Jupyter: to stop the running container, go to your terminal window where docker is running and hit `ctrl + c`. Do not just close your terminal window without stopping Docker first! If you, you'll have to restart your computer before you can run docker again.

### Option 2: Binder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gboeing/ppd534/master?urlpath=lab)

This option has two key drawbacks. First, all the notebooks are read-only, meaning that you cannot save any changes you make, notes you take, or new files you create. Second, they timeout after about 10 minutes of activity.

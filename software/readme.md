# Course software

You need a laptop for this course, but all the required software is free and open-source.

## Get to know your terminal

Your computer comes with a "terminal" app that lets you type commands for your computer to run (on Windows, the terminal is called "command prompt"). Before you complete the initial software setup below, make sure you have read Module 1's assigned readings on how to use the terminal.

## Initial software setup

The two important pieces of software that you need to install are docker and git. Docker is a virtualization tool that allows you to run the coure's Python environment in a self-contained sandbox called a container.

### Step 1: Docker

First we'll install docker. (Note: if you're on Windows, you must have Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.)

  1. Download and install the version of [docker desktop](https://www.docker.com/products/docker-desktop) for your operating system
  2. Once Docker is installed, look for its icon in your menu bar/system tray (it looks like a whale). Right-click it and choose preferences/settings.
  3. In the "shared drives" or "file sharing" section (depending on your OS this may have a different name or may appear under the "resources" heading), ensure that your computer's drives are shared with Docker then apply the changes. In the "advanced" section, set Memory to 4096 MB (2 GB) then apply the changes.
  4. Restart your computer
  5. Open a terminal window, run `docker pull gboeing/ppd534:latest`

### Step 2: Git

Next you need to install [git](https://git-scm.com/downloads).

Once git is installed, open a terminal window, change directories to your computer's desktop, and run:

```
git clone https://github.com/gboeing/ppd534.git
```

You should now see a folder called `ppd534` on your desktop.

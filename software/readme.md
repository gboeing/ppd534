# Course software

You need a laptop for this course, but all the required software is free and open-source.



## Get to know your terminal

Your computer comes with a "terminal" app that lets you type commands for your computer to run (on Windows, the terminal is called "command prompt"). Before you complete the initial software setup below, make sure you have read Module 1's assigned readings on how to use the terminal.



## Initial software setup

At the beginning of the semester, you need to do a one-time setup process to install and configure the course software on your computer. The two important pieces of software that you need to install are docker and git. Docker is a virtualization tool that allows you to run the coure's Python environment in a self-contained sandbox called a container. Git is a tool that lets you pull in the latest versions of the course files each week. Install and configure the software by following the steps below.


### Step 1: Docker

(Note: if you're on Windows, you must have Windows 10 Professional or Enterprise 64-bit to use docker desktop. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.)

First, download and install the version of [docker desktop](https://www.docker.com/products/docker-desktop) for your operating system

Restart your computer. Docker should start automatically after your computer restarts, but it might take a minute. Once Docker is running, you can find its icon in your menu bar/system tray (it looks like a whale). Right-click it and choose "preferences" or "settings" (names are slightly different on Mac vs Windows).

If you're on Mac: in the settings, go to "resources" > "file sharing" and ensure /Users appears in the list. If it doesn't it, add it then apply.

If you're on Windows: in the settings, go to "shared drives" make sure all your drives are ticked for sharing. If they aren't, tick them then apply.


### Step 2: Git

Next, download and install [git](https://git-scm.com/downloads).


### Step 3: Wrapping up

Open a terminal, change directories to your desktop, and run `git clone https://github.com/gboeing/ppd534.git` to copy the course files to your desktop

When that has finished, run `docker pull gboeing/ppd534:latest` to download the course's docker image (might take a couple minutes)

When that has finished, close your terminal window.

# Course software

You need a laptop for this course, but all the required software is free and open-source.

## Initial software setup

First you need to install docker desktop. If you're on Windows, you must have Microsoft Windows 10 Professional or Enterprise 64-bit. If you don't, you'll need to [upgrade](https://support.microsoft.com/en-us/help/12384/windows-10-upgrading-home-to-pro) your OS.

  1. Download and install the version of [docker desktop](https://www.docker.com/products/docker-desktop) for your operating system
  2. Once Docker is installed, look for its icon in your menu bar/system tray (it looks like a whale). Right-click it and choose preferences/settings. Under "shared drives," ensure that your computer's drives are shared with Docker then apply the changes. Under "advanced," set Memory to 4096 MB then apply the changes.
  3. Restart your computer
  4. Open a terminal window, run `docker pull gboeing/ppd534:latest`

Next you need to install [git](https://git-scm.com/downloads).

Once git is installed, open a terminal window, change directories to your desktop, and run:

```
git clone https://github.com/gboeing/ppd534.git
```


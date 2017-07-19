---
layout: post
title: How to Install Git on Fedora 26
description: In this article you'll learn how to install git on Fedora 26 and why not in other Linux distribution...
date: 2017-07-18 15:06:45 -0700
excerpt: In this article you'll learn how to install git on Fedora 26 and why not in other Linux distribution...
image: /assets/img/how-install-git-fedora-26.png
---
### In this article, you'll learn how to install git on Fedora 26 and why not in other Linux distribution, let's get started!

***Almost two months away from the blog. Thank you, God, for bringing me back!***

**[Fedora](https://getfedora.org/en/)** is one between a dozen of **Linux Distro** around the web. The Fedora distro is in version **26**, and its release date was in *July, 11th, 2017* (***oh wheee***).  

I'm using Fedora 26 right now, I've upgraded the previous version (Fedora 25) to the released version. The developer's team have done an excellent job, everything is so smoothly, quickly and painless.  

If you'd like to get one of the three version, **[Workstation](https://getfedora.org/en/workstation/)**, **[Server](https://getfedora.org/en/server/)** or **[Atomic](https://getfedora.org/en/atomic/)**, [click here](https://getfedora.org/en/)!

### Git - Software Configuration Management

Lets **[Git](https://git-scm.com/)** introduces itself.  

> Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

>Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.  

As you could read, Git is a powerful tool to help us manage our projects and its version. It allows us to keep a version of our software changes, revert to the previous version and create a new version of the files or directories.

### Installation

Here we'll learn two ways to install git on Fedora 26. The first we'll install git from system default repository ([Without Headaches Way](#without-headaches-way)) and the second one we'll install git from the official git release page ([Linux Geek Way](#linux-geek-way)).

### Without Headaches Way

The "W.H.W." is very simple, but before using it, first, we need to check if our system is up-to-date with the latest version of packages.   
In our command line.  

```
# Copy and paste the code below on command line.
sudo dnf -y update
```

Everything okay!? Next, install **Git** typing.
```
# Copy and paste the code below on command line.
sudo dnf -y install git
```  

Once completed and successfully installed, let's check the git installed version typing.
```
# Copy and paste the code below on command line.
git --version
```  

Congratulations, you get installed git **Without Headaches** and **Without Complex Commands**, *ooh wheee*.

### Linux Geek Way

If you are fearless, self-confident and sometimes likes to get angry with new things, this is for you!  

Before we started,  we need to install the required software dependencies from the default repositories, along with the utilities that needed to build a binary from source.

```
# Download the last version from git source
wget https://www.kernel.org/pub/software/scm/git/git-2.13.3.tar.gz -O git-2.13.3.tar.gz

# Extract all files from git-2.13.3.tar.gz
tar -zxf git-2.13.3.tar.gz

# Enter in git-2.13.3 folder
cd git-2.13.3/

sudo make configure
./configure --prefix=/usr/local

sudo make install

# To check the version
git --version
```
Or  

```
Download the last version from Github

# Extract all files
tar -zxf NAME_OF_FILE.tar.gz

# Enter in NAME_OF_FOLDER folder
cd NAME_OF_FOLDER/

sudo make configure
./configure --prefix=/usr/local

sudo make install

# To check the version
git --version
```
Congratulations fearless warrior, you get the latest git version, *oohh wheeee*!  

**Using this method, we've installed the latest source release (2.13.3). Release note: 2017-07-12**.  

Thank you guys for reading this article, I’ll hope you enjoy it, any question about it, leave a message down below.

---
layout: post
title: Hosting a Jekyll blog to Github Pages
description: The last post about Jekyll and Github Pages and how to use them to hosting your website...
date: 2017-05-13 15:11:11 -0700
excerpt: The last post about Jekyll and Github Pages and how to use them to hosting your website...
image: /assets/img/hosting-jekyll-blog.png
style: |
  p img { box-shadow: 0 8px 50px -6px black!important; }
---
### The last post about Jekyll and Github Pages and how to use them to hosting your website. If it is your first time here, this is a series of three posts that I created to teach people how they can hosting their website on Github.

To following the next steps, I recommend you see the previous posts, ok!?  

[Part 1 - Setting up your environment to Jekyll](https://diegosc.com/jekyll-environment)  
[Part 2 - Exploring Jekyll Directory Structure](https://diegosc.com/jekyll-structure)  

If you've already done all of these steps above, let's get started!

### STEP 1 - Sign Up to Github

[Github](https://github.com/) is a development platform inspired by the way you work. From open source to business, you can host and review code, manage projects, and build software alongside millions of other developers.  

[GitHub Pages](https://pages.github.com/) is a static site hosting service also is designed to host your personal, organization, or project pages directly from a GitHub repository.  

For now, all you need to do is sign up and create your personal account on [Github](https://github.com/) and create your first repository.

### STEP 2 - User/Org VS. Project site

When it open the GitHub Pages, it gives us two options: **User / Organization Site** or **Project Site**. The difference is: You are a ***user or organization*** that have ***one*** site per Github account and have unlimited project sites in the account. If you want to another site, you'll need to create a new Github account.

### STEP 3 - Creating a Repository

After you've created a Github account, we need create a repository to our awesome-blog.

![github1](/assets/img/github1.png)  

You need to be mindful of here because this is crucial that your repository name is your Github username.   

In my case, my Github username is **diegosozua**, and my repository name is **diegosozua.github.io**.

![github2](/assets/img/github2.png)   

Don't worry about the red alert because this is the repository of my personal blog. Then, make sure to input your username, if your username is **jekylldeveloper**, so your repository name should be **jekylldeveloper.github.io**.  

Now click on the green **"create repository"** button.  

After clicking the create repository button, you'll see a page that looks like this.

![github3](/assets/img/github3.png)  

Here we have an explanation of how to get all of our files into our new repository. Don't close this page, and we're going to use it to the next step, for now, open your command line.

### STEP 4 - Installing Git
To go forward, we need to make sure that we have git installed.  

[Git](https://git-scm.com/) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.  

If you've already had git installed, you can skip this step and take to the next.  

**Git on Windows via chocolatey**

Open your command line and run the following command:
```
# Copy and paste the code below on command line.
choco install git
```
To upgrade Git, run the following command from command line.
```
# Copy and paste the code below on command line.
choco upgrade git
```
If you don't see any error, refresh your terminal closing it, or you can run the following command:
```
# Copy and paste the code below on command line.
refreshenv
```
For more information, [click here](https://chocolatey.org/packages/git).

**Git on Linux**  

It is easiest to install Git on Linux using the preferred package manager of your Linux distribution.  

**Debian/Ubuntu**  
```
$ sudo apt-get install git
```

**Fedora**  
```
# Up to Fedora 21
$ sudo yum install git

# Fedora 22 and later
$ sudo dnf install git
```

**Arch Linux**  
```
$ pacman -S git
```
For more Linux distribution, [click here](https://git-scm.com/download/linux).  

**Git on OS X Mac**  

If you're using Mavericks (1.9) or above you can do this simply by trying to run ***git*** from the Terminal the very first time. If you don’t have it installed already, it will prompt you to install it.  

Now if you want to a more up to date version, [click here](https://git-scm.com/download/mac).  

### STEP 5 - Terminal, Project location and push to Github  

Open your terminal or command line.  

Go to the folder where it is your project on your computer.
```
# Windows
C:\> cd Your/Project/Path/

# Linux and Mac
$ cd Your/Project/Path/
```

Into the project folder, we're going run some following git command on command line or terminal.  

**git init**: create a git repository on your project folder.
```
# Copy and paste the code below on command line.
git init
```
**git add**: adds all the files contained in the project folder.  
```
# Copy and paste the code below on command line.
git add .
```
**git commit**: committing to Github with a message "first commit".
```
# Copy and paste the code below on command line.
git commit -m "first commit"
```
**git remote add origin**: this is the url of your repository, it's used in the first time.
```
# Change "username" for your username
git remote add origin https://github.com/yourusername/yourusername.github.io.git
```
**git push -u origin master**: pushes changes to your Github repository, in the *“master”* branch.
```
# Copy and paste the code below on command line.
git push -u origin master
```

Refresh your page and you'll see something like this.

![github4](/assets/img/github4.png)

Now got to your **username.github.io** , copy and paste it in your favorite browser.  

If everything is ok, your site may look like this.

![github5](/assets/img/github5.png)

And this is it. I’m thankful for you had taken your precious time to read this and the previous posts about the **"mini tutorial"** that I've made about Jekyll and Github Pages. Any question about installation or something that doesn't work, please leave a message bellow.  

Once again, thanks for reading this article!

---
layout: post
title: Setting up your environment for Jekyll
description: In this post, I'm going to show you how to set up your Windows, Linux and OS X Mac environment for Jekyll
date: 2017-04-28 14:50:11 -0700
excerpt: In this post, I'm going to show you how to set up your Windows, Linux and OS X Mac environment for Jekyll
image: /assets/img/jekyll-env.png
style: |
  p img { box-shadow: 0 8px 50px -6px black!important; }
---
### In this post, I'm going to show you how to set up your Windows, Linux and OS X Mac environment for Jekyll.

Getting to the point, I'll start with Windows environment. But if you want to go directly to your O.S.  

[Installing Jekyll on Linux](#jekyll-on-linux)  
[Installing Jekyll on Mac OS X](#jekyll-on-mac)

### Jekyll on Windows

It's not common to see the tutorial explaining how to set up Ruby on Windows because it's not a *"first-choice"* environment to install Ruby and Rails.

First of all, I created this tutorial using Windows 10. Now you're asking yourself.
>Can I try to install it on Windows 7 or Windows 8 or Windows 8.1?

Well, you can try it, there aren't huge differences between these OS but you're aware that I've installed on Windows 10, right!?

#### Installing Chocolatey

[Chocolatey](https://chocolatey.org/) is a package manager for Windows (like apt-get or yum or dnf for Windows), we're going to use it to install Ruby and Jekyll on Windows.  

Open your command prompt as administrator mode.  

```bash
# Copy the command line below
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```  
And paste the copied text into your command prompt. Press Enter and wait a few second for the command complete.

![CMD chocolatey](/assets/img/win1.png)  

![CMD chocolatey2](/assets/img/win2.png)

If you don't see any errors, we are ready to use Chocolatey.  

```bash
# For sure that everything is ok, type: "choco" on the command prompt.
C:\>choco
```
![CMD choco](/assets/img/win3.png)

#### Installing Ruby on Windows

Now we need to install Ruby, it's pretty simple. In command line.
```bash
# Copy and paste or type the code below on your terminal
# The "-y" is to confirm all answer instead prompting it. Press Enter
choco install ruby -y
```   
![CMD choco install ruby -y](/assets/img/win5.png)  

If you don't see any errors, all we need to do is refresh the console.  

### Refreshing the console  

There are two ways to refresh the console, the common and the lazy (or smart) way.   

The common way all you need to do is just simply close and re-open you command prompt.  

Now for the lazy **"smart"** way you can just simply.
```bash
# Copy and paste or type the code below on your terminal
refreshenv
```
![CMD refreshenv](/assets/img/win7.png)  

Without close your command prompt.

#### Installing Jekyll and Bundler on Windows

To install Jekyll it's simple.
```bash
# Copy and paste or type the code below on your terminal
gem install jekyll
```
![CMD gem install jekyll](/assets/img/win10.png)  

![CMD gem install jekyll2](/assets/img/win11.png)  

Wait for a few second for complete it. Now we're going to install Bundler.  

[Bundler](http://bundler.io/) is essential to ensure that the gems you need are present in development, staging, and production.  

To install Bundler, it seems the same as Jekyll gem installation.
```bash
# Copy and paste or type the code below on your terminal
gem install bundler
```
![CMD gem install bundler](/assets/img/win9.png)  

Wait for a few second, if you don't see any errors, we are ready to [create our first project](#creating-our-first-project).

### Jekyll on Linux  

Despite I'm using Fedora distro, I create this tutorial on Ubuntu 17.04 distro because Ubuntu is still one of the most popular distros and one of the most intuitive for a non-Linux user.  

>Can I try to install it on Ubuntu 15 or 16?  

Maybe, you can try it but I do not guarantee that it will works well.  

First of all, we need to certificate that we have the newest version of our package and their dependencies.

```bash
# Copy and paste or type the code below on your terminal
sudo apt-get update
```
![Terminal ubuntu apt-get](/assets/img/linux001.png)

After that, we're ready to install ruby and all its *dependencies*, *libraries*, *make* and *gcc*.

#### Installing Ruby on Linux  

To install ruby and its dependencies.
```bash
# Copy and paste or type the code below on your terminal
sudo apt-get install ruby ruby-dev make gcc
```
Wait a few minutes.

![Terminal ubuntu apt-get install ruby ruby-dev make gcc](/assets/img/linux002.png)

If you don't see any errors, we're ready to install Jekyll and Bundler.

#### Installing Jekyll and Bundler on Linux

To install Jekyll and bundler it's pretty simple.
```bash
# Copy and paste or type the code below on your terminal
sudo gem install jekyll bundler
```
This could be take a while, be patience.

![Terminal ubuntu sudo gem install jekyll bundler](/assets/img/linux003.png)  

If you don't see any errors, we are ready to [create our first project](#creating-our-first-project).

### Jekyll on Mac

Last but no least, I've used Mac OS X Sierra to install Jekyll.
> Can I try to install it on El Capitan or Mavericks?  

You can try it but I don't guarantee that it will work.

#### Installing XCODE

To run Jekyll on Mac OS X we need to install the [Xcode](https://developer.apple.com/support/xcode/). The xcode has 4GB to download but we don't need the entirely Xcode unless you need it to programming in object-c or swift.  

All we need it's just Xcode command line tools. To install it open your terminal and type:
```bash
# Copy and paste or type the code below on your terminal
xcode-select --install
```
![Terminal OS X xcode-select --install](/assets/img/osx01.png)

It will appear a message saying: **“The xcode-select command requires the command line developer tools. Would you like to install the tools now?"** Press **“install”** and wait a few minutes.

#### Installing Ruby with RVM

Now, we need to install the rvm **“Ruby Version Manage”**;
Go to [rvm website](http://rvm.io).

```bash
# Copy and paste or type the code below on your terminal
\curl -sSL https://get.rvm.io | bash -s stable
```
![Terminal OS X \curl -sSL https://get.rvm.io | bash -s stable](/assets/img/osx02.png)

After that, we need to run a script to use the RVM.

```bash
# Copy and paste or type the code below on your terminal
source /Users/YourUserName/.rvm/scripts/rvm
```
![Terminal OS X source /Users/YourUserName/.rvm/scripts/rvm](/assets/img/osx03.png)

Now we need to install ruby.
```bash
# Copy and paste or type the code below on your terminal
rvm install ruby-2.4.1
```
![Terminal OS X rvm install ruby](/assets/img/osx04.png)

During the process, RVM will also install the [Homebrew](https://brew.sh/), press **enter** to continue the installation.  

>Homebrew is a package manager for MacOS as the Chocolatey is for Windows.

![Terminal OS X homebrew install](/assets/img/osx05.png)

#### Installing Jekyll and Bundler on Mac OS X

To install Jekyll it's simple.
```bash
# Copy and paste or type the code below on your terminal
gem install jekyll
```  
![Terminal OS X jekyll](/assets/img/osx06.png)

Wait a few minutes and if you don't see any errors, we're ready to install Bundler.

```bash
# Copy and paste or type the code below on your terminal
gem install bundler
```
![Terminal OS X bundler](/assets/img/osx07.png)

If you don't see any errors, we are ready to create our first project.

### Creating our first project

Now we need to choose a place to create our project. In this example, I'll create the project in my **Documents** folder but you can create your project whatever you want.  

Considering that you already are in **Documents** folder or in the folder that you choose.  
```bash
# Copy and paste or type the code below on your terminal
# Since myblog is the name of our project folder.
jekyll new myblog
```
Wait a few minutes until complete it. If you don't see any errors, we need to enter into our project folder.  

```bash
# Copy and paste or type the code below on your terminal
# Once again, myblog is the name of our folder.
cd myblog
```  
### Running Jekyll

Into the **myblog** folder type.
```bash
# Copy and paste or type the code below on your terminal
jekyll serve
```
Windows
![Windows Jekyll s](/assets/img/win15.png)  

Linux
![Linux Jekyll s](/assets/img/linux09.png)  

Mac
![Mac OS X Jekyll s](/assets/img/osx09.jpeg)  

Take this [http://127.0.0.1:4000/](http://127.0.0.1:4000/) address and paste it into your favorite browser and see your first website/blog/portfolio running for the very first time.  

![On browser](/assets/img/win16.png)   

Thank you guys for reading this article, I'll hope you enjoy it, any question about these installations, leave a message below.

---
layout: post
title: Exploring Jekyll Directory Structure
date: 2017-05-02 13:54:11-0700
description: In the previous post you've learned how to set up your environment. Now in this post you’re going to know...
excerpt: In the previous post you've learned how to set up your environment. Now in this post you’re going to know...
image: /assets/img/exploring-jekyll-directory-structure.png
style: |
  body { background-color: #FFFAFA!important; }
  p img { box-shadow: 0 8px 50px -6px black!important; }
---
### The second part of Jekyll tutorial, Beside of directory structure, you're going to see how to create a blank project by yourself.

In the previous post you've learned how to set up your environment. Now in this post you’re going to know how Jekyll directory structure works and how you can create your first blank project.

#### Text Editor

Text editors are great tools that help us to edit any kind of documents. Without them, edit these documents
would be a "pain in the neck". You can use your default text editor the come with your operational system or
you can even use Microsoft Word, LibreOffice or the Google Docs "word-version".  

But I'll recommended these "most powerful" text editors, they're lightweight, they have a bunch of plugins that turn
our life easier.

[Atom (All platforms)](https://atom.io/).

[Brackets (All platforms)](http://brackets.io/).  

[Sublime Text (All platforms)](https://www.sublimetext.com/).  

[Notepad++ (Windows only)](https://notepad-plus-plus.org/).    

For this tutorial, I'm using **Windows** as my environment with **Atom** as my text editor, let's get started!

#### Jekyll Directory Structure

![Dirctory Structure](/assets/img/using-jekyll-project-structure.png)

A basic Jekyll site usually looks something like that you're seeing in the picture above.

We have a **_config.yml** files that contains the options used by the application to modify its behavior.  

We have a **_includes** folder, where we can put the html files such as head.html, header.html, footer.html.  

We have a **_posts** folder, here you can create your posts files following the format: ***YEAR-MONTH-DAY-title-MARKUP***.  

To not waste this post writing all the files and the folders contented in the picture, you can read the complete definition [here](https://jekyllrb.com/docs/structure/).

#### Minima Theme

[Minima](https://github.com/jekyll/minima) is a one-size-fits-all Jekyll theme for writers. It's Jekyll's default (and first) theme.  

If you followed the instruction of the first part of this tutorial, we've created the **myblog** project, right!? If you opened the project folder, you must've seen the following files and folders.  

![Files and Folders](/assets/img/j1.png)

Now you're asking yourself: - Where are the other files and folders?  

The others files and folders are located in Ruby gem folder. To know where the gem folder is located, open your command prompt or terminal (if you're in Linux or Mac OS X), go to **myblog** folder and type:

```
bundle show minima
```
![cmd](/assets/img/cmd1.png)

If you open on your favorite text editor.

![Files and Folders2](/assets/img/j2.png)

Now you see the remaining files and folders. Now I'm going to teach you how to create an empty project.

#### Creating The Blank Project

The minima themes is pretty cool but if I want to create my own project without the minima template by default?  

It's possible and it's simple. First, we need to choose a new local to create our new project. I'll create my new project into my **Documents** folder, feel free to choose your personal folder place to create our new project. Into the folder you choose, you're going to type:

```
jekyll new awesome-blog --blank
```
![cmd2](/assets/img/cmd2.png)

If you open your project on text editor, it will seem like this.

![j3](/assets/img/j03.png)

If you noticed, our project don't have the **_config.yml**, **_sites**, **_posts** and the others files and folders. What will happen if we try to run our project for the first time?

![cmd4](/assets/img/cmd4.png)

#### Installing Ruby Devkit (Windows only)

If you're using Windows as your Ruby/Jekyll develop environment, we need to install the Devkit for some **gems** that need the
**build tools** installed.  

If we type **jekyll serve** in command prompt.

![cmd3](/assets/img/cmd3.png)

It's running but, it's complaining that it's missed the **gem wdm** on **Gemfile**,  so let's create it!  

After we've created the **Gemfile**, we need to install **wdm** but before install it, we need to install the [Ruby Devkit](http://rubyinstaller.org/downloads) first.

Go to [Ruby Devkit](http://rubyinstaller.org/downloads) and download the **DevKit-mingw64**.  

After downloaded it, create a folder in any place and name it. My folder was created in **C:/** with the **Devkit** name.  

> You can use chocolatey to install the Devkit too. Just type: choco install ruby2.devkit and follow the next step.  

Using command prompt, go into the folder where you extracted the Devkit and type:

```
#Gemfile
ruby dk.rb init
```
Now we need to open the **config.yml** and set our ruby path. If you're using [chocolatey](https://chocolatey.org/) to install Ruby and Jekyll, the Ruby path is in
**X:/tools/ruby23**, copy this path and paste on **config.yml** file.
```
# config.yml in Devkit folder
# Example:
# ---
# - C:/ruby19trunk
# - C:/ruby192dev
# ---

- C:/tools/ruby23
```
After that, save and close the config.yml file, get back to the command prompt and type:

```
#Gemfile
ruby dk.rb install
=>[INFO] Updating convenience notice gem override for 'C:/tools/ruby23'
=>[INFO] Installing 'C:/tools/ruby23/lib/ruby/site_ruby/devkit.rb'
```
If you don't see any errors, we need to install wdm gem, type:

```
#Gemfile
gem install wdm
```
After install it, copy and paste on your **Gemfile** the line **gem 'wdm', '>= 0.1.0'**.  
Our Gemfile going to look like this.
```
#Gemfile
source "https://rubygems.org"

gem "jekyll", "3.4.3"
gem 'wdm', '>= 0.1.0'
```
If we type **jekyll serve** on the command prompt we won't see the server complaining about any missed gem anymore.

#### Back To Our Project

If we put the [http://127.0.0.1:4000/](http://127.0.0.1:4000/) in our browser, we'll see a blank page  

If we put a single h1 tag in our index.html file and than refresh the browser, we'll see something inside the tag.

```
#index.html
<h1>Hello</h1>
```
Now we need to create the **_includes**, **_assets** folders.  

Inside of **_assets** folder, create the **css** folder and inside of **css** folder create the **main.css** file.  

### Index.html

Index.html is the homepage of your blog. If you noticed, there is a triple-dashed lines with some text inside it. This is called **Front Matter**.  

[Front Matter](https://jekyllrb.com/docs/frontmatter/) is where Jekyll starts to get really cool. Any file that contains a [YAML](http://yaml.org/) front matter block will be processed by Jekyll as a special file.  

> The front matter must be the first thing in the file and must take the form of valid YAML set between triple-dashed lines.  

Inside of the Front Matter, we have some predefined global variables, in index.html file, I used one predefined variable, it's **layout**.  

![Text Editor 1](/assets/img/te01.png)

Layout is one of the three predefined variables ([to see the other two](https://jekyllrb.com/docs/frontmatter/)).

> If set, this specifies the layout file to use. Use the layout file name without the file extension. Layout files must be placed in the  'layouts' directory.

### includes, layouts, posts and site folders

In **_includes** folder is where we set the layout of our blog. Here I created three html files, **head**, **header** and **footer** and in each one of them I built the layout structure of our page.  

head.html
![head.html](/assets/img/head.png)

header.html
![header.html](/assets/img/header.png)

footer.html
![footer.html](/assets/img/footer.png)

In **_layouts** folder is where we define the layout of our pages. Remember when I cited about Front Matter, triple-dashed lines and so on, got it!? Remember that inside of these triple-dashed lines I've setted the 'layout: default' variable? Here we can create our default, page and post page. In this example, I created the default.html and post.html only.  

default.html
![default.html](/assets/img/default.png)  

post.html
![post.html](/assets/img/post.png)    

If you've noticed in post.html file, there is a front matter with 'layout: default' inside it, it means that post.html is inheriting all the properties of default.html file.  

You've noticed some text inside of a double braces too, didn't you? These are global, site and page variables that Jekyll makes a variety of data available via the [Liquid templating system](https://github.com/Shopify/liquid/wiki).

In **_post** folder is where we create our posts. To create a post we need to follow the format **YEAR-MONTH-DAY-title.MARKUP** or **YEAR-MONTH-DAY-title.MD**, example: ***2017-05-03-example.markup*** or ***2017-05-03-example.md***.  

post file example  

![markup](/assets/img/postmd.png)

In **_site** folder is where the generated site will be placed (by default) once Jekyll is done transforming it.  

### Running the project

Now it's time to type **jekyll serve** to run and see our awesome-blog.  

You can download the complete awesome-blog [here](https://drive.google.com/open?id=0B7n-zWALmPl7NEE1bmJEUG1QeGM).  

Thank you guys for read this article, I’ll hope you enjoy it, any question about it, leave a message below.

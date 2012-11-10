This guide will help you set up *gh-pages-compiler* for your project.

# Getting started

## Choose a hosting

First, you need to decide where will *gh-pages-compiler* be hosted:

* you can use a public *gh-pages-compiler* hosting (coming soon)
* you can install [*gh-pages-compiler* on your own server](doc/install)

## Set up the hook

Now the server is set up, Github will need to call that server every time you commit.

This is very simple, just configure a [post-receive web hook](https://help.github.com/post-receive-hooks/).

## Set up your project

- **Create a `gh-pages` branch** on your repository (if it doesn't exist)

Github will automatically generate a website from the content of this branch.

- **Write a `README.md`** at the root of your repository, in the master branch

Read [why and how](doc/why-readme) if you are lost.

- **Commit and push**, and go see the Github pages!

If everything is correctly configured, Github will call *gh-pages-compiler* when you commit.
*gh-pages-compiler* will then build the website and commit it on the `gh-pages` branch.

Github will then publish the website at something like http://username.github.com/projectname/.

## More

Go on and [read the documentation](doc/index) to use all the features.

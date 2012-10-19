*gh-pages-compiler* generate a website from your markdown documentation.

## Introduction

![gh-pages-compiler workflow](workflow.png)

[Github pages](http://pages.github.com/) are good, but what do you do:

* if you want to write your documentation in Markdown and not in HTML?
* if you want your documentation to be transformed into a website at each commit?
* if you want to keep the documentation with your code, versionned in the repository?

*gh-pages-compiler* is here to help you. **Your documentation is written in Markdown,
versionned in your repository with your source,
automatically compiled to HTML and published to *Github pages*.**

## How does it work

1. *gh-pages-compiler* is hooked to your repository to know when you push
2. you write your README and documentation in `.md` files (Markdown) on your repository
3. each time you push, *gh-pages-compiler* fetches all `.md` files and compiles them to HTML
4. HTML files are committed to the `gh-pages` branch of your repository, and thus are published as a website by Github

The only question here is: **where is *gh-pages-compiler* hosted?**

* you can install *gh-pages-compiler* on your own server
* a public hosting of *gh-pages-compiler* may be available in the future

## Features

* compiles Markdown using the same configuration as Github (to ensure correct results)
* allows to define a template to design your website as wanted

## Read more

* [Getting started](doc/getting-started)
* [Documentation](doc/index)

## Develop

Follow the project [on Github](https://github.com/mnapoli/gh-pages-compiler/)

Made by [Matthieu Napoli](https://github.com/mnapoli), using/inspired by:

* [Redcarpet](https://github.com/vmg/redcarpet)
* [This gist](https://gist.github.com/1300939) from [ralph](https://gist.github.com/ralph)

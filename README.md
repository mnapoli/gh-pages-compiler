*gh-pages-compiler* generate a website from your markdown documentation.

## Introduction

[Github pages](http://pages.github.com/) are good, but what do you do:

* if you want to write your documentation in Markdown and not in HTML?
* if you want your documentation to be transformed into a website?
* if you want to keep the documentation with your code, versioned in the repository?

*gh-pages-compiler* is here to help you. **Your documentation is written in Markdown,
versionned in your repository with your source, compiled to HTML and published to *Github pages*.**

## How does it work

1. you write your README and documentation in `.md` files (Markdown) on your repository
2. you generate you website with *gh-pages-compiler* (turns `.md` files into HTML files)
4. HTML files are committed to the `gh-pages` branch of your repository, and thus are published as a website by Github

## Features

* compiles Markdown using the same configuration as Github (to ensure correct results)
* allows to define a template to design your website as wanted

## Read more

* [Documentation](doc/index)

## Contribute

Follow the project [on Github](https://github.com/mnapoli/gh-pages-compiler/)

Made by [Matthieu Napoli](https://github.com/mnapoli), using/inspired by:

* [Redcarpet](https://github.com/vmg/redcarpet)
* [This gist](https://gist.github.com/1300939) from [ralph](https://gist.github.com/ralph)

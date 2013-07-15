*gh-pages-compiler* generates a website from your markdown documentation.

## Introduction

[Github pages](http://pages.github.com/) are good, but what do you do:

* if you want to write your documentation in **Markdown** and not in HTML?
* if you want your documentation to be transformed into a **website**?
* if you want to **keep the documentation with your code**, versioned in the repository?

*gh-pages-compiler* is here to help you. **Your documentation is written in Markdown,
versioned in your repository with your source, compiled to HTML and published to *Github pages*.**

## How does it work

1. you write your README and documentation in `.md` files (Markdown) on your repository
2. you generate you website with *gh-pages-compiler*
  - it turns `.md` files into HTML files
  - HTML files are committed to the `gh-pages` branch of your repository, and thus are published as a website by Github
3. profit!

## Features

* compiles Markdown using the same configuration as Github (to ensure correct results)
* full control over the website layout: you write your own template and menus
* supports any number of pages, images, links, Javascript (in the template), …
* hosted by GitHub on "Github pages", you don't have to host your website
* your README will be your home page, your code repository will always be in sync with your website

## Read more

* [Documentation](doc/)

## Contribute

Follow the project [on Github](https://github.com/mnapoli/gh-pages-compiler/)

Created by [Matthieu Napoli](https://github.com/mnapoli), using and inspired by:

* [Redcarpet](https://github.com/vmg/redcarpet)
* [This gist](https://gist.github.com/1300939) from [ralph](https://gist.github.com/ralph)

## Examples

* [gh-pages-compiler](http://mnapoli.github.com/gh-pages-compiler/)
* [PHP-DI](http://mnapoli.github.com/PHP-DI/)

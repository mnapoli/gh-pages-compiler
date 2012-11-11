This guide will help you install *gh-pages-compiler* on your server or computer.

# Install on your own machine

## Requirements

You will need a Unix system:

* Linux
* Mac OS X
* [Cygwin](http://cygwin.com) for Windows

Install [Ruby](http://www.ruby-lang.org).

Install [Redcarpet](https://github.com/vmg/redcarpet) (Ruby gem):

```sh
$ [sudo] gem install redcarpet
```

Install a PHP server (Apache + PHP);

## Installation

Now to install *gh-pages-compiler*, you can check out the git repository:

```sh
$ git clone https://github.com/mnapoli/gh-pages-compiler.git
$ cd gh-pages-compiler
```

or [download](doc/download) the latest version.

## Test the installation: first build

Usage:

```sh
$ bin/gh-pages-compiler.sh <repository-url>
```

Example:

```sh
$ bin/gh-pages-compiler.sh https://github.com/mnapoli/gh-pages-compiler.git
```

You will need to type your Github username and password when git will try to *push* the modifications.

## Set up the webservice

The `www/` directory needs to be published so the `post-commit-hook.php` is accessible by Github.

Configure Apache so that `www/` is accessible (as a domain, subdomain, subdirectory, ...).

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

## Installation

Now to install *gh-pages-compiler*:

```sh
$ git clone https://github.com/mnapoli/gh-pages-compiler.git
$ cd gh-pages-compiler
```

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

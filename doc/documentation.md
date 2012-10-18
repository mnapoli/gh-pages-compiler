# Documentation

Have your read the [getting started](doc/getting-started) guide?

## Links

Once you have written the home page in the README,
you can start writing other pages in other `.md` files.

For example, with the following files:

```
README.md
doc/getting-started.md
doc/faq.md
```

You can can create Markdown links as such and they will work on the website:

```md
[Home](index)
[Getting started guide](doc/getting-started)
[Frequently asked questions](doc/faq)
```

You can of course use these urls for your menu too, they are real valid urls (see below for writing a template).

However, you will need to set up the [HTML `base` tag](http://www.w3schools.com/tags/tag_base.asp)
in your template so that links are relative to the root of your website.

```html
<head>
    <base href="http://username.github.com/yourproject/">
</head>
```

## Template

This documentation will come soon.

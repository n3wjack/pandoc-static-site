---
title:  'A Pandoc HTML static website demo'
lang: en
keywords: [demo, pandoc, static site]
...

This is a website generated using [Pandoc](https://pandoc.org/) to generate HTML from Markdown files, explained in this [blog post](https://n3wjack.net/2025/01/03/build-a-static-website-using-pandoc/).

This shows how you can use the Pandoc tool (available on all platforms) to generate a static HTML site, with minimal effort, using markdown files to contain the content, and use a minimal script to generate the HTML site. 

It can do **formatting** and _styling_, show images (below), [links](about.html) etc, basically anything Markdown allows.

I can be customized by including HTML using Pandoc extension points:

- before & after the body (header & footer): see the `includes\after-body.html` and `includes\before-body.html` files in the Git repository.
- in the header (JS includes): see the `includes\header-include.html` files in the Git repository.
- CSS includes (like pico.css, which is used here): see the `build.ps1` script.

Markdown supports embedding plain HTML as well, so you can use anything that markdown doesn't allow out of the box. Like this button below:

<button onclick="javascript:alert('Boing');">A button</button>
<br/>

![Obligatory cat picture](img/cat-picture.jpg "The obligatory cat picture")

## Pico CSS

[Pico](https://picocss.com) has nothing to do with Pandoc on its own, but it's a minimal CSS framework that works on semantic HTML, which means that it works with the plain HTML elements generated by Pandoc.
This means you don't have to bother with CSS classes anywhere, and it will still look good.
It has a bunch of themes to choose from, so you can still pick the style that suites you the best.



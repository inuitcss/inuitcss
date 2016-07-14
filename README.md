# ![inuitcss](http://inuitcss.com/img/logo-small.png)

**Extensible, scalable, Sass-based, OOCSS framework for large and long-lasting
UI projects.**

inuitcss is a framework in its truest sense: it does not provide you with UI and
design out of the box, instead, it provides you with a solid architectural
baseline upon which to complete your own work.

## Full Documentation

You can find full documentation at [inuitcss.com](http://inuitcss.com).

## Installation

You can use inuitcss in your project by installing it using a package manager
(recommended):

**npm:**

```
$ npm install --save-dev inuitcss
```

**Bower:**

```
$ bower install --save-dev inuitcss
```

**Copy/paste (not recommended):**

You can download inuitcss and save it into your project’s `css/` directory. This
method is not recommended because you love the ability to easily and quickly
manage and update inuitcss as a dependency.

## Getting Started

Once you have got inuitcss into your project using one of the methods outlined
above, there are a handful of things we need to do before we’re ready to go.

Firstly, we need to identify any files whose name contain the word `example`.
These files are demo and/or scaffolding files that inuitcss requires, but that
you are encouraged to create and define yourself. These files, as of v6.0.0,
are:

```
example.main.scss
settings/_example.settings.config.scss
components/_example.components.buttons.scss
utilities/_example.utilities.widths.scss
```

Here’s what we need to do with them:

### `example.main.scss`

This is your main, or _manifest_, file. This is the backbone of any inuitcss
project, and it is responsible for `@import`ing all other files. This is the
file that we compile out into a corresponding CSS file.

You need to copy this file from the directory that your package manager
installed it into, and move it to the root of your `css/` directory. Once there,
rename it `main.scss`.

Next, you’ll need to update all of the `@import`s in that file to point at the
new locations of each partial (that will depend on how your project is set up).

Once you’ve done this, you should be able to run the following command on that
file and get a compiled stylesheet without any errors:

```
path/to/css/ $ sass --watch main.scss:main.css
```

**N.B.** If you downloaded inuitcss, you do not need to move this this; you can
simply rename it.

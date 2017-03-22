# ![inuitcss](http://inuitcss.com/img/logo-small.png)

[![CircleCI](https://img.shields.io/circleci/project/inuitcss/inuitcss/master.svg?maxAge=2592000?style=flat-square)](https://circleci.com/gh/inuitcss/inuitcss)

**Extensible, scalable, Sass-based, OOCSS framework for large and long-lasting
UI projects.**

inuitcss is a framework in its truest sense: it does not provide you with UI and
design out of the box, instead, it provides you with a solid architectural
baseline upon which to complete your own work.

## Installation

You can use inuitcss in your project by installing it using a package manager
(recommended):

**npm:**

```
$ npm install inuitcss --save
```

**yarn:**

```
$ yarn add inuitcss
```

**Bower:**

```
$ bower install inuitcss --save
```

**Copy/paste (not recommended):**

You can download inuitcss and save it into your project’s `css/` directory. This
method is not recommended because you lose the ability to easily and quickly
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
settings/_example.settings.global.scss
components/_example.components.buttons.scss
```

Here’s what we need to do with them:

### [`example.main.scss`](https://github.com/inuitcss/inuitcss/blob/master/example.main.scss)

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
path/to/css/$ sass main.scss:main.css
```

**N.B.** If you downloaded inuitcss, you do not need to move this file; you
can simply rename it.

### [`_example.settings.config.scss`](https://github.com/inuitcss/inuitcss/blob/master/settings/_example.settings.config.scss)

This is a configuration file that inuitcss uses to handle the state, location,
or environment of your project. This handles very high-level settings that don’t
necessarily affect the CSS itself, but can be used to manipulate things
depending on where you are running things (e.g. turning a debugging mode on, or
telling your CI sever that you’re compiling for production).

Copy this file into your own `css/settings/` directory and rename it
`_settings.config.scss`.

**N.B.** If you downloaded inuitcss, you do not need to move this this file; you
can simply rename it.

### [`_example.settings.global.scss`](https://github.com/inuitcss/inuitcss/blob/master/settings/_example.settings.global.scss)

This is an example globals file; it contains any settings that are available to
your entire project. These variables and settings could be font families,
colours, border-radius values, etc.

Copy this file into your own `css/settings/` directory and rename it
`_settings.global.scss`. Now you can begin adding your own project-wide
settings.

### [`_example.components.buttons.scss`](https://github.com/inuitcss/inuitcss/blob/master/components/_example.components.buttons.scss)

You don’t need to really do much with this file other than ensure you don’t let
it into your final project!

This file exists to show you how you might build components into an inuitcss
project, because components are the one thing that inuitcss purposefully refuses
to provide.

You can, if you wish, copy this file to your own `css/components/` directory and
rename it `_components.buttons.scss`. You can now use this file as the basis for
your own buttons component.

## CSS directory structure

inuitcss follows a specific folder structure, which you should follow as well in your own CSS directory:

* `/settings`: Global variables, site-wide settings, config switches, etc.
* `/tools`: Site-wide mixins and functions.
* `/generic`: Low-specificity, far-reaching rulesets (e.g. resets).
* `/elements`: Unclassed HTML elements (e.g. `a {}`, `blockquote {}`, `address {}`).
* `/objects`: Objects, abstractions, and design patterns (e.g. `.o-layout {}`).
* `/components`: Discrete, complete chunks of UI (e.g. `.c-carousel {}`). This is the one layer that inuitcss doesn’t provide code for, as this is completely your terrain.
* `/utilities`: High-specificity, very explicit selectors. Overrides and helper
  classes (e.g. `.u-hidden {}`).

Following this structure allows you to intersperse inuitcss’ code with your own, so that your `main.scss` file might look something like this:

```scss
// SETTINGS
@import "settings/settings.config";
@import "node_modules/inuitcss/settings/settings.core";
@import "settings/settings.global";
@import "settings/settings.colors";

// TOOLS
@import "node_modules/inuitcss/tools/tools.font-size";
@import "node_modules/inuitcss/tools/tools.clearfix";
@import "node_modules/sass-mq/mq";
@import "tools/tools.aliases";

// GENERIC
@import "node_modules/inuitcss/generic/generic.box-sizing";
@import "node_modules/inuitcss/generic/generic.normalize";
@import "node_modules/inuitcss/generic/generic.shared";

// ELEMENTS
@import "node_modules/inuitcss/elements/elements.page";
@import "node_modules/inuitcss/elements/elements.headings";
@import "elements/elements.links";
@import "elements/elements.quotes";

// OBJECTS
@import "node_modules/inuitcss/objects/objects.layout";
@import "node_modules/inuitcss/objects/objects.media";
@import "node_modules/inuitcss/objects/objects.flag";
@import "node_modules/inuitcss/objects/objects.list-bare";
@import "node_modules/inuitcss/objects/objects.list-inline";
@import "node_modules/inuitcss/objects/objects.box";
@import "node_modules/inuitcss/objects/objects.block";
@import "node_modules/inuitcss/objects/objects.tables";

// COMPONENTS
@import "components/components.buttons";
@import "components/components.page-head";
@import "components/components.page-foot";
@import "components/components.site-nav";
@import "components/components.ads";
@import "components/components.promo";

// UTILITIES
@import "node_modules/inuitcss/utilities/utilities.widths";
@import "node_modules/inuitcss/utilities/utilities.headings";
@import "node_modules/inuitcss/utilities/utilities.spacing";
```

**NOTE:** Every `@import` above which begins with "node_modules" is inuitcss core. When you installed inuitcss via bower, these imports would begin with "bower_components".

Having your own and inuitcss’ partials interlaced like this is one of the real strengths of inuitcss.

## Core functionality

Before inuitcss can do anything, it needs to know your base `font-size` and `line-height`. These settings are stored in `settings.core` (as `$inuit-global-font-size` and `$inuit-global-line-height`), and can be overridden in the same way you’d [override any of inuitcss’ config](#modifying-inuitcss).

Probably the most opinionated thing inuitcss will ever do is reassign your `$inuit-global-line-height` variable to `$inuit-global-spacing-unit`. This value then becomes the cornerstone of your UI, acting as the default margin and padding value for any components that require it.

While this might seem overly opinionated, it does mean that:

1. **You get a free vertical rhythm** because everything sits on a multiple of your baseline, and…
2. **We reduce the amount of [magic numbers](http://csswizardry.com/2012/11/code-smells-in-css/#magic-numbers) in our codebase** because we can rationalise where the majority of values in our CSS came from.

## Modifying inuitcss

inuitcss is highly configurable, but **should not be edited directly**. The correct way to make changes to inuitcss is to pass in variables **before** you `@import` the specific file. Let’s take [`settings.core`](https://github.com/inuitcss/inuitcss/blob/develop/settings/_settings.core.scss) as an example—in this file we can see the variables `$inuit-global-font-size` and `$inuit-global-line-height`. If we want to keep these as-is then we needn’t do anything other than `@import` the file. If we wanted to change these values to `12px` and `18px` respectively (don’t worry, inuitcss will convert these pixel values to rems for you) then we just need to pass those values in before the `@import`, thus:

```scss
$inuit-global-font-size:   12px;
$inuit-global-line-height: 18px;
@import "node_modules/inuitcss/settings/settings.core";
```

The same goes for any inuitcss module: you can configure it by predefining any
of its variables immediately before the `@import`:

```scss
$inuit-wrapper-width: 1480px;
@import "node_modules/inuitcss/objects/objects.wrapper";

$inuit-fractions: 1 2 3 4 12;
@import "node_modules/inuitcss/utilities/utilities.widths";
```

This method of modifying the framework means that you don’t need to edit any
files directly (thus making it easier to update the framework), but also means
that you’re not left with huge, bloated, monolithic variables files from which
you need to configure an entire library.

## Extending inuitcss

To extend inuitcss with your own code, simply create a partial in the `<section>.<file>` format, put it into the [appropriate directory](#css-directory-structure) and `@import` it in your `main.scss`.

But extending inuitcss does not only mean adding your own partials to the project. Due to inuitcss’ modular nature, you can also omit those partials of inuitcss you don't need. But be aware that there are a few interdependencies between various inuitcss partials. The only partial that is indispensable for the framework to work properly is `settings.core`, though. But we recommend using all partials from the `/settings`, `/tools` and `/generic` layer.

### Aliases

In order to avoid clashes with your own code, all of inuitcss’ mixins and
variables are namespaced with `inuit-`, for example: `$inuit-global-spacing-unit`.
These variables and mixins can become very tedious and time consuming to type
over and over, so it is recommended that you alias them to something a little
shorter. You can do this by creating a `tools.aliases` file
(`tools/_tools.aliases.scss`) which would be populated with code like this:

```scss
// Reassign `$inuit-global-spacing-unit` to `$unit`.
$unit: $inuit-global-spacing-unit;

// Reassign lengthy font-size mixin to `font-size()`.
@mixin font-size($args...) {
  @include inuit-font-size($args...);
}
```

You can now use your own aliases onto inuitcss’ defaults throughout your
project.

### Components

inuitcss is a design-free, OOCSS framework—it does its best to provide zero
cosmetic styling. This means that inuitcss can be used on any and all types of
project (and it has been) without dictating (or even suggesting) a
look-and-feel. If you do require a UI out of the box, then inuitcss is probably
not the best tool for you. I’d recommend looking at a UI Toolkit such as
[Bootstrap](http://getbootstrap.com/).

Because inuitcss does no cosmetic styling, it is up to you to author the
Components layer. Components are small partials that contain discrete chunks of
UI that utilise the layers that came before it, for example, a carousel, or a
dropdown nav, or an image gallery, and so on.

## Namespaces

You may have stumbled upon the “odd” way inuitcss’ classes are prefixed. There are three different namespaces directly relevant to inuitcss:

* `.o-`: Objects
* `.c-`: Components
* `.u-`: Utilities

In short: Every class in either of these three directories gets the appropriate prefix in its classname. All of inuitcss’ classes in one of these three layers has this kind of prefix. Be sure to follow this convention in your own code as well to keep a consistent naming convention across your code base.

If you want to dive deeper into namespacing classes and want to know why this is a great idea, have a look at [this article](http://csswizardry.com/2015/03/more-transparent-ui-code-with-namespaces/).

## Responsive

inuitcss is built with as much extensibility as possible in mind. Adding full responsive functionality for every kind of module would pretty much kill the intended generic concept behind the framework.

The one opinionated decision we made was adding [Sass-MQ](https://github.com/sass-mq/sass-mq) as a dependency, to provide at least a full working responsive grid off-the-shelf. So if you need media-query support in your own Sass code, have a look at the [Sass-MQ documentation on how to use it](https://github.com/sass-mq/sass-mq#how-to-use-it) properly.

**NOTE: If you've installed inuitcss neither with npm nor with bower, make sure that Sass-MQ is properly imported in your `main.scss` in the tools layer.**

If you want to use another media-query library like [@include-media](http://include-media.com/) or [sass-mediaqueries](https://github.com/paranoida/sass-mediaqueries), feel free to do so. But in this case you have to manage your [responsive widths classes](https://github.com/inuitcss/inuitcss/blob/develop/utilities/_utilities.widths.scss) yourself.

## Providing plugins for inuitcss

Since inuitcss just provides very generic modules, there are probably modules you will write anew in every project. Although these modules might seem generic enough to you to be integrated into the core framework, we probably will consider it as not generic enough ([we'd appreciate every idea](https://github.com/inuitcss/inuitcss/blob/develop/CONTRIBUTING.md), though!).
But just because we are not willing to include a module you consider being useful, does not mean other inuitcss users shall not benefit from such an useful module. Due to inuitcss’ modular architecture, it's totally possible and we even welcome it, that these modules are published as kind of inuitcss plugins by you in a separate repository.

We'd love to see that the framework gets extended through the contribution of you and your plugins!

## Prerequisities

Make sure you have at least Sass v3.3 installed.

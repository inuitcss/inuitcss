# Changelog



## [Unreleased]

### Breaking changes
- Remove all `.o-wrapper` modifier and return to the initial, bare wrapper object. [[#299](https://github.com/inuitcss/inuitcss/issues/299)]

### New features
- Add `.o-crop--fill` modifier. [[#278](https://github.com/inuitcss/inuitcss/issues/278)]

### Fixes
- Fix `o-layout--stretch` in conjunction with `o-layout--center`, `o-layout--right` and `o-layout--left`. [[#293](https://github.com/inuitcss/inuitcss/issues/293)]
- Update to Sass’ `@else if` syntax according to current spec. [[#331](https://github.com/inuitcss/inuitcss/issues/331)]

### Minor changes
- Provide opt-out mechanism of static images when `width`/`height` attribute is assigned on `<img>`s. [[#328](https://github.com/inuitcss/inuitcss/issues/328)]



## [6.0.0-beta.5] - 2017-06-27

### Breaking changes
- Remove `inuit-rem` function/mixin. [[#204](https://github.com/inuitcss/inuitcss/issues/204)]
- Remove `.o-list-inline--delimited` modifier. [[#223](https://github.com/inuitcss/inuitcss/issues/223)]
- Rename pack objects reverse modifier to `.o-pack--reverse`. [[#234](https://github.com/inuitcss/inuitcss/issues/234)]
- Rename spacings utility file to `_utilities.spacings`. [[#260](https://github.com/inuitcss/inuitcss/issues/260)]

### New features
- **Finally provide responsive spacings**. [[#217](https://github.com/inuitcss/inuitcss/issues/217)]
- The default vertical alignment of pack items (i.e. `.o-pack__item`) is now `top`. [[#220](https://github.com/inuitcss/inuitcss/issues/220)]
- Generating spacing classes that care about multiple directions is now possible. [[#228](https://github.com/inuitcss/inuitcss/issues/228)]
- Add `.o-layout--left` modifier. [[#245](https://github.com/inuitcss/inuitcss/issues/245)]
- Add `.o-layout--stretch` modifier. [[#264](https://github.com/inuitcss/inuitcss/issues/264)]
- Add `.o-layout--auto` modifier. [[#266](https://github.com/inuitcss/inuitcss/issues/266)]
- Add `.o-pack--default` modifier. [[#249](https://github.com/inuitcss/inuitcss/issues/249)]
- By providing the `.o-list-bare__item` class, we can now use the bare-list on any HTML element we want. [[#280](https://github.com/inuitcss/inuitcss/issues/280)]
- Update normalize.css to version 7.0.0. [[#295](https://github.com/inuitcss/inuitcss/issues/295)]

### Fixes
- Fix `border-spacing` issue when the flag object is nested inside other specific components. [[#254](https://github.com/inuitcss/inuitcss/issues/254)]



## [6.0.0-beta.4] - 2016-10-18

### New features
- Add customization for delimiter and breakpoint-separator in the widths-classes to circumvent possible HTML processor issues. [[#166](https://github.com/inuitcss/inuitcss/issues/166)]
- Add customization for spacing class names. [[#159](https://github.com/inuitcss/inuitcss/issues/159)]
- Add basic form reset styles. [[#156](https://github.com/inuitcss/inuitcss/issues/156)]

### Fixes
- Fix push/pull `left`/`right` property override issue. [[#200](https://github.com/inuitcss/inuitcss/issues/200)]

### Also:
Lots of tidy-ups, code-formatting and small improvements not worth mentioning :)



## [6.0.0-beta.3] - 2016-08-30

### Breaking changes
- `_settings.global.scss` is renamed to `_settings.core.scss`.   
The rather opinionated example variables `$inuit-global-radius` and `$inuit-global-transition` are transfered to the new `_example.settings.global.scss` file and renamed to `$global-radius` and `$global-transition`. [[#83](https://github.com/inuitcss/inuitcss/issues/83)]
- The `hidden-visually` mixin is now prefixed with `inuit-`. Call the mixin with `@include inuit-hidden-visually();` from now on. [[#105](https://github.com/inuitcss/inuitcss/issues/105)]
- The default fractions for the widths-classes have changed. [[#101](https://github.com/inuitcss/inuitcss/issues/101)]   
    We now provide:   
    - `1/1`
    - `1/2`, `2/2`
    - `1/3`, `2/3`, `3/3`
    - `1/4`, `2/4`, `3/4`, `4/4`
    - `1/5`, `2/5`, `3/5`, `4/5`, `5/5`    
    If you use classes with a `x/12` or `x/16` fraction like `u-6/12` or `u-4/16` in your markup and you don't want to change these classes accordingly in your HTML, you can generate the appropriate widths-classes you need by altering the `$inuit-fractions` Sass list (in yout main Sass stylesheet):   
    ```scss
    $inuit-fractions: 1 2 3 4 5 12 16 !default;
    @import "utilities/utilities.widths";
    ```
- The reverse modifier of the flag objects is renamed from `.o-flag-rev` to `.o-frag--reverse`. [[#114](https://github.com/inuitcss/inuitcss/issues/114)]
- Split the `_tools.functions.scss` and `_tools.mixins.scss` files into individual files. [[#5](https://github.com/inuitcss/inuitcss/issues/5)]   
    Alter the import of these files in your Sass main stylesheet as follows:
    ```scss
    @import "tools/tools.rem";
    @import "tools/tools.font-size";
    @import "tools/tools.clearfix";
    @import "tools/tools.hidden";
    ```
- Remove `inuit-halve` Sass function. [[#5](https://github.com/inuitcss/inuitcss/issues/5)]
- Remove `inuit-hocus` Sass function. [[#5](https://github.com/inuitcss/inuitcss/issues/5)]
- Remove `_tools.widths.scss` file and integrate its content into `_utilities.widths.scss`. [[#117](https://github.com/inuitcss/inuitcss/issues/117)]   
    This means that you have to remove the import of the tools file in your Sass main stylesheet.
- Put offsets (i.e. push and pull classes) behind a feature switch. [[#104](https://github.com/inuitcss/inuitcss/issues/104)]   
    If you use `u-push-` and/or `u-pull-` classes, switch them on in your Sass main stylesheet:
    ```scss
    $inuit-offsets: true;
    @import "utilities/utilities.widths";
    ```

### New features
- Add [Sass MQ](https://github.com/sass-mq/sass-mq) as default media-query management tool. [[#80](https://github.com/inuitcss/inuitcss/issues/80)]
- Add table object. [[#97](https://github.com/inuitcss/inuitcss/issues/97)]
- Add pack object. [[#98](https://github.com/inuitcss/inuitcss/issues/98)]
- Add new button variations for the example button component.
- Add `CONTRIBUTING` file. [[#14](https://github.com/inuitcss/inuitcss/issues/14)]
- Provide `box-sizing: border-box;` for layout object by default to make dependency of generic.box-sizing partial obsolete. [[#89](https://github.com/inuitcss/inuitcss/issues/89)]



## [6.0.0-beta.2] - 2016-07-19

### New features
- Add flag object. [[#76](https://github.com/inuitcss/inuitcss/issues/76)]
- Ability to pass `!important` as argument for the font-size mixin. [[#54](https://github.com/inuitcss/inuitcss/issues/54)]

### Fixes
- Heading utilities font-sizes are now declared with `!important`. [[#54](https://github.com/inuitcss/inuitcss/issues/54)]
- Fix `.o-layout--small`. The `.o-layout--small`s `margin-left` property was set to a positive value rather than a negative value which caused the layout container to be unintentionally indented on the x-axis. [[#84](https://github.com/inuitcss/inuitcss/issues/84)]

### Minor changes
- Add missing rule to `html` element to prevent page jumps. [[#77](https://github.com/inuitcss/inuitcss/issues/77)]

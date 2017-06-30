# Changelog

## [Unreleased]

## [6.0.0-beta.2] - 2016-07-19

### New features
- Add flag object. [[#76](https://github.com/inuitcss/inuitcss/issues/76)]
- Ability to pass `!important` as argument for the font-size mixin. [[#54](https://github.com/inuitcss/inuitcss/issues/54)]

### Fixes
- Heading utilities font-sizes are now declared with `!important`. [[#54](https://github.com/inuitcss/inuitcss/issues/54)]
- Fix `.o-layout--small`. The `.o-layout--small`s `margin-left` property was set to a positive value rather than a negative value which caused the layout container to be unintentionally indented on the x-axis. [[#84](https://github.com/inuitcss/inuitcss/issues/84)]

### Minor changes
- Add missing rule to `html` element to prevent page jumps. [[#77](https://github.com/inuitcss/inuitcss/issues/77)]


6.0.0-beta.5 / YYYY-MM-DD
==================

## New features
  * [[PR #229]](https://github.com/inuitcss/inuitcss/pull/229) - Now inuitcss has a changelog!

## Possible breaking changes
  * [[PR #211]](https://github.com/inuitcss/inuitcss/pull/211) - Rename the tables object: use singular
  * [[PR #221]](https://github.com/inuitcss/inuitcss/pull/221) - The vertical alignment of the pack object's itens now default to top

## Other, safer changes
  * [[PR #226]](https://github.com/inuitcss/inuitcss/pull/226) - Change the `npm` and `bower` instructions in the README, to advocate installing inuitcss as a `dependency`
  * [[PR #215]](https://github.com/inuitcss/inuitcss/pull/215) and [[PR #216]](https://github.com/inuitcss/inuitcss/pull/216) - Use simpler value for example `$global-transition` variable
  * [[PR #213]](https://github.com/inuitcss/inuitcss/pull/213) - Add some rules to the `inuit-hidden-visually` mixin
  * [[PR #209]](https://github.com/inuitcss/inuitcss/pull/209) - Fix typo in the title banner in `objects.wrapper`
  * [[PR #205]](https://github.com/inuitcss/inuitcss/pull/205) - Remove warning banner from `settings.core`


6.0.0-beta.4 / 2016-10-18
=========================

## New features
  * [[PR #191]](https://github.com/inuitcss/inuitcss/pull/191) - The class names generated in `utilities.spacing` are now customizable. Hipster naming conventions are no longer a dream!
  * [[PR #194]](https://github.com/inuitcss/inuitcss/pull/194) and [[PR #202]](https://github.com/inuitcss/inuitcss/pull/202) - By popular demand, now inuitcss has minimal documentation in the form of a `README.md`
  * [[PR #192]](https://github.com/inuitcss/inuitcss/pull/192) - Widths delimiter and breakpoints separator are now customizable in `utilities.widths`. HAML users can now sleep soundly.
  * [[PR #138]](https://github.com/inuitcss/inuitcss/pull/138) - Now with stylelint

## Possible breaking changes
  * [[PR #183]](https://github.com/inuitcss/inuitcss/pull/183) - Fix duplicate key error when extending the ratio and crop objects' maps
  * [[PR #176]](https://github.com/inuitcss/inuitcss/pull/176) - Simplify IE8 fallback, by removing the `$inuit-oldIE` variable and checks

## Other, safer changes
  * [[PR #203]](https://github.com/inuitcss/inuitcss/pull/203) - Reset properties correctly, by adding some missing `!important` in `utilities.widths`
  * [[PR #193]](https://github.com/inuitcss/inuitcss/pull/193) - Add reset styles for fieldset in `generic.reset`
  * [[PR #185]](https://github.com/inuitcss/inuitcss/pull/185) - Throw error when not using a `px` unit in the `inuit-font-size` mixin
  * [[PR #184]](https://github.com/inuitcss/inuitcss/pull/184) - Update normalize.css from 4.2.0 to 5.0.0
  * [[PR #155]](https://github.com/inuitcss/inuitcss/pull/155), [[PR #171]](https://github.com/inuitcss/inuitcss/pull/171) and [[PR #187]](https://github.com/inuitcss/inuitcss/pull/187) - Tidy up
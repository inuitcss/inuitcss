# CONTRIBUTING

Whilst inuitcss gratefully welcomes contributions from the open-source
community, there are a number of requirements and principles that need adhering
to before code is eligible for inclusion in the project.

## Simplicity is paramount.

inuitcss is written in Sass, which provides us with a lot of incredibly powerful
features. However, we do not want inuitcss to become a platform for Sass’
capabilities—all code that comes into inuitcss should be as simple and CSS-like
as possible.

Adding this complexity is against a number of inuitcss’ core principles of
team-based workflows, long-running and larger projects, and its flexibility.

* **It obscures functionality.** This can make things harder to decipher,
  understand, and debug.
* **It adds points-of-failure.** More moving parts means more things to go
  wrong. Always err on the side of simplicity.
* **It requires an advanced level of understanding.** On large(r) projects, the
  variance in skill-level can differ greatly. From designers, to front-end
  developers, to software engineers, everyone will need to author some CSS at
  some point—make this learning curve as shallow as possible.
* **It creates a barrier to entry.** inuitcss is working very hard to become a
  widely useful framework: it is taking active steps to become less opinionated
  and more flexible so that it can be implemented by a more varied user
  base—adding advanced Sass features will close this openness back up.
* **It adds unnecessary complexity.** Working on large(r) projects commands a
  greater cognitive overhead as it is; adding more complexity is the exact wrong
  direction to go.

Kinds of code we do not want:

* **Hundred-line mixins designed to avoid a couple of lines of repetition:** the
  overhead of typing a few more lines is much less than creating, documenting,
  learning, and maintaining complex Sass functionality.
* **Mixins which generate entire blocks of CSS:** creating ‘black boxes’ in code
  often leads to obscurity, lack of understanding, lack of confidence, and lack
  of trust in a codebase. Everything should be as transparent and CSS-like as
  possible.

Sass provides us with a lot of fantastic features, but the introduction of
complex, obscure, or monolithic code should always be avoided where possible.

**If you are in doubt, please open an issue on the relevant repository to
discuss a feature/addition _before_ submitting a pull request. This way we can
asses code’s suitability and its likelihood of inclusion _before_ your go to the
effort of writing anything.**

## New modules

If you would like to suggest a module to add to inuitcss, please [open a new
issue](https://github.com/inuitcss/CONTRIBUTING/issues/new) against this
repository.

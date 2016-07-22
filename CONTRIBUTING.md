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

**If you are in doubt, please open an issue to discuss a feature/addition
_before_ submitting a pull request. This way we can assess code’s suitability
and its likelihood of inclusion _before_ your go to the effort of writing
anything.**

## Git(Hub) Workflow

If you would like to submit a pull request, please follow the below Git
process/workflow. It helps to give us a better paper-trail, and allows us to
follow work through the issue/pull request process.

1. **Create a new issue for the proposed addition/change/fix.** This allows us
   to discuss the suitability of the proposal before you begin work.
2. **Create a new branch entitled `tkt-<issue-number>`.** Look at the URL of
   your new issue; take its number (e.g. 99) and create a branch called
  `tkt-0099` (with leading zeroes). Do all of your work in this branch.
3. **Start all commit messages with `[refs #<issue-number>]`.** If you’re
   working on issue 99, all of your commits should begin with `[refs #0099]`.
  This allows us to link every commit back to both an issue and a branch.

Example:
[f000350](https://github.com/inuitcss/inuitcss/commit/f000350dd23b92cb403142f4a8af84d92d300cf7).
Here I can see that the ‘Implement proposed flag object fix’ commit happened
against [issue 76](https://github.com/inuitcss/inuitcss/issues/76), and took
place in a branch named `tkt-0076`. This means that I can find any discussions
around this piece of work, and I know in which branch I should commit and
further, related work.

The one downside to this workflow is that branches no longer have descriptive
names, so running `$ git branch` might leave you looking at something like this:

```
develop
master
tkt-0014
tkt-0021
tkt-0058
tkt-0080
tkt-0083
tkt-0089
```

Use [ghi](https://github.com/stephencelis/ghi) to get detailed information about
a particular branch and its related issue, e.g.:

```
$ ghi 14
```

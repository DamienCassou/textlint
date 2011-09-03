# Setup instructions for Emacs #

## With el-get ##

If you use [el-get](https://github.com/dimitri/el-get/) you are lucky,
just add the following recipe:

	(:name textlint
	    :type git
	    :url "git://github.com/DamienCassou/textlint.git"
	    :website "http://scg.unibe.ch/research/textlint"
	    :description "Allows the integration of TextLint within Emacs"
	    :load "textlint.el")

Now you can [use TextLint](#emacs-using).

## Without el-get ##

If you do not use el-get,
[download the textlint.bash and textlint.el files](https://github.com/DamienCassou/textlint)
from github, update your load-path, and load "textlint.el".

You then have to customize the variable in the textlint group using
`M-x customize-group RET textlint RET`.

Now you can [use TextLint](#emacs-using).

## Using TextLint under Emacs <a name="emacs-using"></a>

You can now visit a text file and type `M-x textlint-run RET`. When
you see "Compilation finished", you can start using `` C-x ` `` to
visit the next error message and move to the text that caused it.

# Setup instructions for TextMate #

Double click on "TextLint.tmbundle" to install TextLint. Open a LaTeX
or plain text file and press `Ctrl+Shift+V` to run TextLint. Alternatively
select "Bundles > TextLint > RunText Lint" from the menu.

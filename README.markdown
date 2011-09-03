# Setup instructions Emacs #

To get started, you first need to download the
[TextLint OneClick](http://hudson.lukas-renggli.ch/job/TextLint/lastSuccessfulBuild/artifact/TextLint-OneClick.zip)
distribution.

Extract the zip file anywhere and follow the instructions depending on
your editor of choice.

If you use [el-get](https://github.com/dimitri/el-get/) you are lucky,
just add the following recipe:

	(:name textlint
	    :type git
	    :url "git@github.com:DamienCassou/textlint.git"
	    :website "http://scg.unibe.ch/research/textlint"
	    :description "Allows the integration of TextLint within Emacs"
	    :load "textlint.el")

If you do not use el-get,
[download the textlint.bash and textlint.el files](https://github.com/DamienCassou/textlint)
from github, update your load-path, and load "textlint.el".

Which way you choose, you will have to customize the variables in the
textlint group using `M-x customize-group RET textlint RET`.

Then visit a text file and type `M-x textlint-run RET`. When you see
"Compilation finished", you can start using `` C-x ` `` to visit the next
error message and move to the text that caused it.

# Setup instructions TextMate #

Double click on "TextLint.tmbundle" to install TextLint. Open a LaTeX or plain text file and press Ctrl+Shift+V to run TextLint. Alternative select "Bundles > TextLint > RunText Lint" from the menu.
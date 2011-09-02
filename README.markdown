# Setup instructions #

To get started, you first need to download the
[TextLint OneClick](http://hudson.lukas-renggli.ch/job/TextLint/lastSuccessfulBuild/artifact/TextLint-OneClick.zip)
distribution.

Extract the zip file anywhere and follow the instructions depending on
your editor of choice.

## Emacs ##

If you use [el-get](https://github.com/dimitri/el-get/) you are lucky,
just add the following recipe:

	(:name textlint
		      :type git
		      :url "git@github.com:DamienCassou/textlint.git"
		      :website "http://scg.unibe.ch/research/textlint"
		      :description "Allows to integrate TextLint within Emacs"
		      :load "textlint.el")

If you don't use el-get,
[download the project](https://github.com/DamienCassou/textlint) from
github, add the project to your load-path, and load "textlint.el".

Which way you choose, you will have to customize the variables in the
textlint group using `M-x customize-group RET textlint RET`.



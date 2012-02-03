# Introduction <a name="introduction"></a>

Written text is an important component in the process of knowledge
acquisition and communication. Poorly written text fails to deliver
clear ideas to the reader no matter how revolutionary and
ground-breaking these ideas are. Providing text with good writing
style is essential to transfer ideas smoothly. While we have
sophisticated tools to check for stylistic problems in program code,
we do not apply the same techniques for written text. TextLint is a
ruled-based tool to check for common style errors in natural language.
TextLint provides a structural model of written text and an extensible
rule-based checking mechanism.

Watch [two](http://www.youtube.com/watch?v=SrG29zWHqkk)
[screencasts](http://www.youtube.com/watch?v=CsG2DKgHanE) and a
[presentation](http://www.slideshare.net/renggli/text-lint) to get an
overview of TextLint.

TextLint implements various stylistic rules that its authors collected
over the years, and that are described in

- The Elements of Style, by William Strunk Jr. and E. B. White
- On Writing Well, by William Zinsser

TextLint is a
[research project](http://scg.unibe.ch/research/textlint) of the
[Software Composition Group](http://scg.unibe.ch/) (SCG) from the
[University of Bern](http://www.unibe.ch/)
([related publications](http://scg.unibe.ch/scgbib?query=textlint)).

TextLint is currently accessible through:

- [An Emacs plugin](#emacs-installing)
- [A Vim plugin](#vim-installing)
- [A TextMate plugin](#textmate-installing)
- [A web interface](http://textlint.lukas-renggli.ch/)
- [A Smalltalk IDE](http://scg.unibe.ch/research/textlint)


# Setup instructions for Emacs <a name="emacs-installing"></a>

## With el-get <a name="emacs-el-get"></a>

If you use [el-get](https://github.com/dimitri/el-get/) you are lucky,
just add the following recipe:

	(:name textlint
	    :type git
	    :url "git://github.com/DamienCassou/textlint.git"
	    :website "http://scg.unibe.ch/research/textlint"
	    :description "Allows the integration of TextLint within Emacs"
	    :load "textlint.el")

Now you can [use TextLint](#emacs-using).

## Without el-get <a name="emacs-no-el-get"></a>

If you do not use el-get,
[download the project archive file][zipball] from the [github project](https://github.com/DamienCassou/textlint), unzip, update your load-path, and load "textlint.el".

You then have to customize the variables in the textlint group using
`M-x customize-group RET textlint RET`. You at least need to configure
`textlint-location-textlint`.

Now you can [use TextLint](#emacs-using).

## Using TextLint under Emacs <a name="emacs-using"></a>

You can now visit a text file and type `M-x textlint-run RET`. When
you see "Compilation finished", you can start using `` C-x ` `` to
visit the next error message and move to the text that caused it.


# Setup instructions for Vim <a name="vim-installing"></a>

The recommended installation procedure is to use [pathogen][] or [Vundle][].

For [pathogen][], just unzip [the textlint archive][zipball] or checkout the TextLint repository under `~/.vim/bundle`.

For [Vundle][], add this line to your `.vimrc`, then invoke `:BundleInstall` in Vim:

    Bundle 'DamienCassou/textlint'

[pathogen]: https://github.com/tpope/vim-pathogen "Pathogen.vim, manage your runtimepath"
[vundle]: https://github.com/gmarik/vundle "Vundle, the plug-in manager for Vim"

## Using TextLint under Vim <a name="vim-using"></a>

To invoke TextLint, use the `:TextLint` command from your text buffer. For convenience, there is a predefined shortcut: `<leader>tl`. Once TextLint has finished, Vim's quickfix window will open; you can then navigate between TextLint suggestions with the normal `:cn` and `:cp` commands. Consult `:help quickfix` for more details.


# Setup instructions for TextMate <a name="textmate-installing"></a>

Double click on "TextLint.tmbundle" to install TextLint. Open a LaTeX
or plain text file and press `Ctrl+Shift+V` to run TextLint. Alternatively
select "Bundles > TextLint > RunText Lint" from the menu.


# Support <a name="support"></a>

If you want to report problems do that on the
[Issues page](https://github.com/DamienCassou/textlint/issues).

If you want to propose the integration for a new editor or fix an
existing integration, please
[fork the project](https://github.com/DamienCassou/textlint) and start
a pull request.

If you want to change the TextLint engine or just have a look at it,
get it from the [SCG website](http://scg.unibe.ch/research/textlint).
Please propose patches by email
[to the developers](http://www.squeaksource.com/textlint.html).

[zipball]: https://github.com/DamienCassou/textlint/zipball/master "Zip snapshot of TextLint"


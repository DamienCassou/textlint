;;; textlint.el --- bla bla about textlint -*- coding: utf-8 -*-

;; Copyright (C) 2011, Damien Cassou <damien.cassou@gmail.com>

;; Author: Damien Cassou <damien.cassou@gmail.com>
;; Maintainer: Damien Cassou <damien.cassou@gmail.com>
;; Created: 2 Sep 2011
;; Version: 0.8

;; This file is not currently part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program ; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;; bla bla

;;; Code:

(defgroup textlint nil
  "Controlling TextLint (http://scg.unibe.ch/research/textlint) from Emacs."
  :prefix "textlint-"
  :group 'tools)

(defcustom textlint-location-textlint
  "~/.emacs.d/el-get/textlint"
  "The path to the textlint.bash Bash script."
  :group 'textlint
  :type '(file :must-match t))

(defun textlint-location-script ()
  (concat textlint-location-textlint "/textlint.bash"))

(defun textlint-location-vm ()
  (concat textlint-location-textlint "/Linux/pharo"))

(defun textlint-location-image ()
  (concat textlint-location-textlint "/TextLint.tmbundle/Support/TextLint.image"))

(defun textlint-run ()
  (interactive)
  (let ((filename (file-relative-name (buffer-file-name))))
    (compile (format "%s %s %s %s"
		     (textlint-location-script)
		     filename
		     (textlint-location-vm)
		     (textlint-location-image)))))


;;; textlint.el ends here

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

(defun textlint-run ()
  (interactive)
  (let ((script "~/.emacs.d/textlint.bash")
	(vm "~/Documents/squeak/vms/Cog/CogVM")
	(image "~/Documents/writing/textlint/textlint.image")
	(filename (file-relative-name (buffer-file-name))))
    (compile (format "%s %s %s %s" script filename vm image))))


;;; textlint.el ends here

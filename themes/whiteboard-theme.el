;;; whiteboard-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 Scott Frazer.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme whiteboard
  "")

(custom-theme-set-faces
 'whiteboard
 '(default ((t (:background "#f5f5f5" :foreground "#000000"))))
 '(cursor ((t (:background "#00cd00" :foreground "#f5f5f5"))))
 '(region ((t (:background "#87ceff"))))
 '(mode-line ((t (:background "#bfbfbf" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#545454" :foreground "#000000"))))
 '(fringe ((t (:background "#dcdcdc"))))
 '(minibuffer-prompt ((t (:foreground "#104e8b"))))
 '(font-lock-builtin-face ((t (:foreground "#ff4500"))))
 '(font-lock-comment-face ((t (:foreground "#7f7f7f"))))
 '(font-lock-constant-face ((t (:foreground "#6e8b3d"))))
 '(font-lock-function-name-face ((t (:foreground "#cd9b1d"))))
 '(font-lock-keyword-face ((t (:foreground "#1c86ee"))))
 '(font-lock-string-face ((t (:foreground "#8b7355"))))
 '(font-lock-type-face ((t (:foreground "#00688b"))))
 '(font-lock-variable-name-face ((t (:foreground "#2e8b57"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000" :weight bold))))
 '(isearch ((t (:background "#ee6a50" :foreground "#ffffff"))))
 '(lazy-highlight ((t (:background "#5f9ea0" :foreground "#ffffff"))))
 '(link ((t (:foreground "#008b8b" :underline t))))
 '(link-visited ((t (:foreground "#b452cd" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#e5e5e5" :foreground "#333333")))))

(provide-theme 'whiteboard)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; whiteboard-theme.el  ends here

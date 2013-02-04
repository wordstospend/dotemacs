;;; fuji-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 Adrian Prantl.

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

(deftheme fuji
  "")

(custom-theme-set-faces
 'fuji
 '(default ((t (:background "#1b1d1e" :foreground "#ffffff"))))
 '(cursor ((t (:background "#000000" :foreground "#ffe670"))))
 '(region ((t (:background "#eedc82"))))
 '(mode-line ((t (:background "#bfbfbf" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#e5e5e5" :foreground "#333333"))))
 '(fringe ((t (:background "#f2f2f2"))))
 '(minibuffer-prompt ((t (:foreground "#7B76F7"))))
 '(font-lock-builtin-face ((t (:foreground "#a6e22e"))))
 '(font-lock-comment-face ((t (:foreground "#6d7478"))))
 '(font-lock-constant-face ((t (:foreground "#ae81ff"))))
 '(font-lock-function-name-face ((t (:foreground "#a6e22e"))))
 '(font-lock-keyword-face ((t (:foreground "#f92672"))))
 '(font-lock-string-face ((t (:foreground "#0feb00"))))
 '(font-lock-type-face ((t (:foreground "#f7ef00"))))
 '(font-lock-variable-name-face ((t (:foreground "#fd971f"))))
 '(font-lock-warning-face ((t (:foreground "#ff08b5" :weight bold))))
 '(isearch ((t (:background "#cd00cd" :foreground "#b0e2ff"))))
 '(lazy-highlight ((t (:background "#4b6e42"))))
 '(link ((t (:foreground "#0000ff" :underline t))))
 '(link-visited ((t (:foreground "#8b008b" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#e5e5e5" :foreground "#333333")))))

(provide-theme 'fuji)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; fuji-theme.el  ends here

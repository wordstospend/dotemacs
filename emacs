(require 'cl)

(defun require-all (requirelist)
  (loop for requirement in requirelist do
  	(load (symbol-name requirement))
  ))

; Base directory that `normal-top-level-add-subdirs-to-load-path' will assume is
; where you stick all your lisp files
(setq default-directory "~/dotemacs/")

; Add all the subdirectories of the this dir
(normal-top-level-add-subdirs-to-load-path)

(require-all '(
	       ekeys ;; my key bindings and some aliases
	       efuncs ;; a bunch of my own utility functions
	       modes ;; configuration for 100-odd emacs modes
	       ))

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(when (file-exists-p "~/.custom")
  (load-library "~/.custom"))

(server-start)

;; (when (and (boundp 'at-amazon) at-amazon)
;;       (require 'amazon-modes))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-strict-missing-semi-warning nil)
 '(org-agenda-files (quote ("~/org/gtd.org")))
 '(slime-js-swank-command "swank-js"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; open up my org file
(find-file "~/org/gtd.org")
;; remove toolbar
(tool-bar-mode -1)

;; Open files and goto lines like we see from g++ etc. i.e. file:line#
;; (to-do "make `find-file-line-number' work for emacsclient as well")
;; (to-do "make `find-file-line-number' check if the file exists")
(defadvice find-file (around find-file-line-number
                             (filename &optional wildcards)
                             activate)
  "Turn files like file.cpp:14 into file.cpp and going to the 14-th line."
  (save-match-data
    (let* ((matched (string-match "^\\(.*\\):\\([0-9]+\\):?$" filename))
           (line-number (and matched
                             (match-string 2 filename)
                             (string-to-number (match-string 2 filename))))
           (filename (if matched (match-string 1 filename) filename)))
      ad-do-it
      (when line-number
        ;; goto-line is for interactive use
        (goto-char (point-min))
        (forward-line (1- line-number))))))

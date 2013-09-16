(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(require 'org-install)

;; Set up indenting for org files
(setq org-startup-indented t)

;; Set to the location of your Org files on your local system
(setq org-directory "~/org")

;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; set the todo states
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELLED")))


;; setting tags
(setq org-tag-alist '(;; location tags
                      (:startgroup . nil)
                      ("@work" . ?w) ("@home" . ?h)
                      (:endgroup . nil)
                      (:startgroup . nil)
                      ("@computer" . ?c)
                      ("@onthego" . ?o)
                      (:endgroup . nil)
                      ("@tel" . ?t)
                      ;; owner client
                      ("4say" . ?s) ("4personal" . ?p)))

; Refiling C-c C-w
(setq org-refile-targets '((nil :maxlevel . 2)
                           ("~/org/gtd.org" :maxlevel . 4)
                           (org-agenda-files :maxlevel . 4)
                           ))
; This allows for file like pathing for refiling
;  and lets me pick heading and subheading (level <= 2)
(setq org-refile-use-outline-path "file")

(setq org-default-notes-file (concat org-directory "/inbox.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(
        ("t" "Todo" entry (file+headline "~/org/gtd.org" "Inbox")
	 "* TODO %?\n  %i\n ")
        ))


;; not working for some reason
(defadvice org-capture-bounce-to
   (after org-capture)
   "Bounce to the capture buffer"
   (find-file "~/org/inbox.org"))

 (ad-activate 'org-capture-bounce-to)

;; set up custome agenda
(setq org-agenda-custom-commands
      '(("w" "waiting" todo "WAITING")
        ("t" . "Todo list") ;; a lable to 't'
        ("to" "on the go todo" tags "+@onthego+TODO=\"TODO\"")
        ("tw" "todo at work" tags "+4say+TODO=\"TODO\"")
        ("tp" "todo personl" tags "+4personal+TODO=\"TODO\"")
        ("tt" "todo tree" tags-tree "+4personal+TODO=\"TODO\"")
        ))

;; exit from an agenda goes back to previous state of windows
(setq org-agenda-restore-windows-after-quit t)

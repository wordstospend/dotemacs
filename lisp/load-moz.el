(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(add-hook 'js2-mode-hook 'javascript-custom-setup)

(defun javascript-custom-setup ()
  (moz-minor-mode 1))

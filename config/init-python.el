;; Python Mode
(require 'python-mode)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(setq py-shell-name "python") ;; Use ipython as default shell
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Delete trailing
;; whitespaces before save file

(provide 'init-python)

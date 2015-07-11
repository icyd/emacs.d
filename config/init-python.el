;; Python Mode
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-hook 'python-mode-hook 'run-python)
(setq py-shell-name "ipython")
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-python)

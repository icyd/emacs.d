;; Python Mode
(require 'python-mode)
;; (add-hook 'python-mode 'run-python)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-python)

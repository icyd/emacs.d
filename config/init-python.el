;; Python Mode
(ensure-package-installed 'python-mode)

(require 'python-mode)
;; (add-hook 'python-mode 'run-python)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-python)

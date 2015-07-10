;; Company-Mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'company-quickhelp)
(company-quickhelp-mode 1)
(setq company-quickhelp-delay 1.0)

(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(provide 'init-company)

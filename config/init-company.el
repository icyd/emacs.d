;; Company-Mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'python-mode-hook 'anaconda-mode)
(with-eval-after-load "company"
    (add-to-list 'company-backends 'company-anaconda))

(require 'company-quickhelp)
(company-quickhelp-mode 1)
(setq company-quickhelp-delay 1.0)

(provide 'init-company)

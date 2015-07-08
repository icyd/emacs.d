;; Company-Mode
(ensure-package-installed 'company 'company-quickhelp 'anaconda-mode
                          'company-anaconda)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'company-quickhelp)
(company-quickhelp-mode 1)
(setq company-quickhelp-delay 1.0)

(require 'company-anaconda)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(provide 'init-company)

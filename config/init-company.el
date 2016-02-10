;; Company-Mode
(require 'company)
(require 'company-web-html)
(add-hook 'after-init-hook 'global-company-mode) ;; Activate global mode
(add-hook 'python-mode-hook 'anaconda-mode) ;; Activate anaconda-mode when
;; python-mode kicks in
(with-eval-after-load "company"
  (add-to-list 'company-backends 'company-anaconda)) ;; Load backend
(with-eval-after-load "company"
  (add-to-list 'company-backends 'company-c-headers))
(add-hook 'html-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-web-html))
                          (company-mode t)))
(require 'company-quickhelp)

(company-quickhelp-mode 1) ;; Activate quickhelp
(setq company-quickhelp-delay 0.5) ;; Delay before help shows

(provide 'init-company)

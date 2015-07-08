;;Org-mode
(ensure-package-installed 'org)
(require 'org)

;; Disable Electric-autopair in org mode
(add-hook 'org-mode-hook
          (lambda ()
            (set (make-local-variable 'electric-pair-mode) nil)))
(setq org-log-done t)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"
                             "~/org/projects.org"))

(provide 'init-org)

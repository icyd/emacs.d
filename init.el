;; User Information
(setq user-full-name "Alberto J. Vázquez")
(setq user-mail-address "beto.v25@gmail.com")

;; Add path-of-config directory
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; Add required configuration files
(require 'init-packages)
(require 'init-general)
(require 'init-interface)
(require 'init-evil)
(require 'init-org)
(require 'init-dtrt-indent)
(require 'init-flycheck)
(require 'init-python)
(require 'init-company)
(require 'init-helm)
(require 'init-lambdada)
(require 'init-markdown)
(require 'init-html)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

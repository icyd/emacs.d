;; User Information
(setq user-full-name "Alberto J. Vázquez")
(setq user-mail-address "beto.v25@gmail.com")

;; Add path-of-config directory
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; Add required configuration files
;;(require 'name)
(require 'init-packages)
(require 'init-general)
(require 'init-interface)
(require 'init-evil)
(require 'init-org)
(require 'init-dtrt-indent)
(require 'init-flycheck)
(require 'init-python)
(require 'init-company)
(require 'init-interface)

(provide 'init)

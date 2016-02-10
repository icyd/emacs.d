;; Help to manage files of a project
(require 'projectile)

(projectile-global-mode) ;; Allow global mode
(setq projectile-enable-caching t ;; Enable caching of files
      projectile-indexing-method 'helm) ;; Use helm as default indexer
;; (require 'helm-projectile)
;; (helm-projectile-on) ;; Enable helm & projectile integration

(provide 'init-projectile)

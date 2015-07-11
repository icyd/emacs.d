(require 'projectile)

(projectile-global-mode)
(setq projectile-enable-caching t
      projectile-indexing-method 'helm)
(require 'helm-projectile)
(helm-projectile-on)

(provide 'init-projectile)

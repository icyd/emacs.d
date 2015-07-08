(ensure-package-installed 'color-theme-solarized 'powerline
                          'fill-column-indicator 'diminish)

;; Theme customization
;;(require 'color-theme-solarized)
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)
(add-hook 'after-make-frame-functions
    (lambda (frame)
      (let ((mode (if (display-graphic-p frame) 'dark 'dark)))
        (set-frame-parameter frame 'background-mode mode)
        (set-terminal-parameter frame 'background-mode mode))
      (enable-theme 'solarized)))

;; Fill Column Indicator (default: 80th column)
(setq fci-rule-column 80)
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Diminish
(require 'diminish)
(diminish 'visual-line-mode)
(eval-after-load "undo-tree" '(diminish 'undo-tree-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "company" '(diminish 'company-mode))
;; (eval-after-load "magit" '(diminish 'magit-auto-revert-mode))

(provide 'init-interface)

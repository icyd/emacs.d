;; Theme customization
(load-theme 'solarized t) ;; Load theme
(set-frame-parameter nil 'background-mode 'dark) ;; Set back type for gui
(set-terminal-parameter nil 'background-mode 'dark) ;; Set back type for term
(enable-theme 'solarized)
;; Set background depending on type of emacs (gui or terminal)
(add-hook 'after-make-frame-functions
    (lambda (frame)
      (let ((mode (if (display-graphic-p frame) 'dark 'dark)))
        (set-frame-parameter frame 'background-mode mode)
        (set-terminal-parameter frame 'background-mode mode))
      (enable-theme 'solarized)))

;; Fill Column Indicator (default: 80th column)
(setq fci-rule-column 80) ;; Select column to highlight
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1) ;; Global mode

;; Diminish
(require 'diminish)
(diminish 'visual-line-mode)
(eval-after-load "undo-tree" '(diminish 'undo-tree-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "company" '(diminish 'company-mode))
(eval-after-load "projectile" '(diminish 'projectile-mode))
(eval-after-load "irony" '(diminish 'irony-mode))
(eval-after-load "anaconda-mode" '(diminish 'anaconda-mode))
(eval-after-load "markdown" '(diminish 'markdown-mode))
;; (eval-after-load "magit" '(diminish 'magit-auto-revert-mode))

(provide 'init-interface)

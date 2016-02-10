;; Flycheck: Check semantics on the fly
(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)
(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)) ;; Disable
  ;; for emacs lisp files
  (setq-default flycheck-standard-error-navigation nil)) ;; Disable for
  ;; navigation
(global-flycheck-mode t) ;; Global mode

(defun my-flycheck-c-setup()
  (setq flycheck-gcc-language-standard "gnu99"))
(add-hook 'c-mode-hook #'my-flycheck-c-setup)

(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
(provide 'init-flycheck)

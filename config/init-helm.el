(require 'helm)
(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)

(setq
      helm-split-window-in-side-p t ;; open helm in current window
      helm-move-to-line-cycle-in-source t ;; move cycle end to top and vis.
      helm-ff-search-library-in-sexp t ;; search in library require  and declare-function sexp.
      helm-scroll-amount 8 ;; scroll 8 lines other window
      helm-ff-file-name-history-use-recentf t
      helm-M-x-fuzzy-match t ;; Fuzzy matching with M-x
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
      helm-idle-delay 0.0
      helm-input-idle-delay 0.01
      helm-quick-update t
      )

;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "C-x b") 'helm-mini)
(evil-leader/set-key "x" 'helm-M-x)
(evil-leader/set-key "m" 'helm-mini)
(evil-leader/set-key "e" 'helm-find-files)

(provide 'init-helm)

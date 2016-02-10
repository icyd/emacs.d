(require 'helm)
(require 'helm-config)

(setq
      helm-split-window-in-side-p t ;; Open helm in current window
      helm-move-to-line-cycle-in-source t ;; Move cycle end to top and vis
      helm-ff-search-library-in-sexp t ;; Search in library require and
      ;; declare-function sexp.
      helm-scroll-amount 8 ;; Scroll 8 lines other window
      helm-ff-file-name-history-use-recentf t
      helm-M-x-fuzzy-match t ;; Fuzzy matching with M-x
      helm-buffers-fuzzy-matching t ;; Fuzzy for buffers
      helm-recentf-fuzzy-match t ;; Fuzzy for recent files
      helm-idle-delay 0.0 ;; Decrease response time
      helm-input-idle-delay 0.01
      helm-quick-update t
      )

;; Key binding for helm
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)
(evil-leader/set-key "x" 'helm-M-x)
(evil-leader/set-key "m" 'helm-mini)
(evil-leader/set-key "e" 'helm-find-files)

(provide 'init-helm)

;;Evil-mode
(ensure-package-installed 'evil 'evil-leader 'evil-tabs 'evil-surround
                          'evil-nerd-commenter 'powerline-evil
                          'ace-jump-mode)

(require 'evil)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-mode 1)
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))
(setq evil-move-cursor-back nil)
(setq evil-leader/in-all-states t)
(evil-leader/set-leader ",")
(evil-leader/set-key "d" 'electric-pair-mode)
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;;; esc quits
(defun minibuffer-keyboard-quit () "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))(define-key evil-normal-state-map [escape] 'keyboard-quit)

(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;; (define-key evil-normal-state-map "\C-y" 'yank)
;; (define-key evil-insert-state-map "\C-y" 'yank)
;; (define-key evil-visual-state-map "\C-y" 'yank)
;; (define-key evil-insert-state-map "\C-e" 'end-of-line)
;; (define-key evil-normal-state-map "\C-w" 'evil-delete)
;; (define-key evil-insert-state-map "\C-w" 'evil-delete)
;; (define-key evil-insert-state-map "\C-r" 'search-backward)
;; (define-key evil-visual-state-map "\C-w" 'evil-delete)
;; To move between windows as in Vim
;; (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;; (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;; (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;; (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;; c-j / c-k page down/up
(define-key evil-normal-state-map (kbd "C-k") (lambda ()
                                                (interactive)
                                                (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-j") (lambda ()
                                                (interactive)
                                                (evil-scroll-down nil)))

;; Evil-tabs
(require 'evil-tabs)
(global-evil-tabs-mode t)
(evil-leader/set-key "º" (lambda() (interactive) (elscreen-goto 0)))
(evil-leader/set-key "1" (lambda() (interactive) (elscreen-goto 1)))
(evil-leader/set-key "2" (lambda() (interactive) (elscreen-goto 2)))
(evil-leader/set-key "3" (lambda() (interactive) (elscreen-goto 3)))
(evil-leader/set-key "4" (lambda() (interactive) (elscreen-goto 4)))
(evil-leader/set-key "5" (lambda() (interactive) (elscreen-goto 5)))
(evil-leader/set-key "6" (lambda() (interactive) (elscreen-goto 6)))
(evil-leader/set-key "7" (lambda() (interactive) (elscreen-goto 7)))
(evil-leader/set-key "8" (lambda() (interactive) (elscreen-goto 8)))
(evil-leader/set-key "9" (lambda() (interactive) (elscreen-goto 9)))

;; Evil surrounds
(require 'evil-surround)
(global-evil-surround-mode 1)

;;Evil NerdCommenter
(require 'evil-nerd-commenter)
(evil-leader/set-key
    "ci" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cc" 'evilnc-copy-and-comment-lines
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "cr" 'comment-or-uncomment-region
    "cv" 'evilnc-toggle-invert-comment-line-by-line
    )

;; Powerline (conflict with evil-tabs, should be put afterwards)
(require 'powerline-evil)
(powerline-evil-vim-color-theme)
(display-time-mode t)

;; other evil keybinding
;; (evil-leader/set-key "SPC" 'lazy-highlight-cleanup)
;; (evil-leader/set-key "SPC" 'evil-search-highlight-persist-remove-all)
(evil-leader/set-key "ea" 'flycheck-list-errors)   ; <leader>ea show all errors
(evil-leader/set-key "en" 'flycheck-next-error)    ; <leader>en next errors
(evil-leader/set-key "tn" 'elscreen-create)        ; <leader>tn create new tab
(evil-leader/set-key "tc" 'elscreen-kill)          ; <leader>tc close tab
(evil-leader/set-key "gs" 'desktop-save)
(evil-leader/set-key "css" 'desktop-read)
(evil-leader/set-key "cv" 'delete-other-windows)   ; <leader>cv to close other splits
(evil-leader/set-key "im" 'helm-imenu)             ; shows functions

(evil-leader/set-key "=" (lambda(begin end)        ; <leader>= align selection lines by "="
                           (interactive "r")
                           (align-regexp begin end "\\(\\s-*\\)=" 1 1 )))
(evil-leader/set-key "v" (lambda () (interactive)
                           (split-window-horizontally)
                           (evil-window-right 1)))
(evil-leader/set-key "p" (lambda()                 ; paste on a new line below current
                           (interactive)
                           (evil-open-below 1)
                           (evil-paste-after 1)
                           (evil-normal-state)))
(evil-leader/set-key "P" (lambda()                 ; paste on a new line below current
                           (interactive)
                           (evil-open-above 1)
                           (evil-previous-visual-line 1)
                           (evil-paste-after 1)
                           (evil-normal-state)))
(evil-leader/set-key "o" (lambda () ; <leader>o open line below
                           (interactive)
                           (evil-open-below 1)
                           (evil-normal-state)))
(evil-leader/set-key "O" (lambda () ; <leader>o open line below
                           (interactive)
                           (evil-open-above 1)
                           (evil-normal-state)))
(evil-leader/set-key "ct" 'delete-trailing-whitespace)


;; Ace jump
;; (add-to-list 'load-path "~/.emacs.d/ace-jump-mode/")
(require 'ace-jump-mode)
(evil-leader/set-key "," 'ace-jump-word-mode)
(evil-leader/set-key "l" 'ace-jump-line-mode)
(evil-leader/set-key "a" 'ace-jump-char-mode)

(provide 'init-evil)

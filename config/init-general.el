;; Global and general customizations

;; Set default font
(set-frame-font "DejaVu Sans Mono Book 11")

;;Enable line numeration
(global-linum-mode t)
(when window-system
    (scroll-bar-mode -1) ;; Disable scroll bars
    (tool-bar-mode -1)   ;; Disable tool bar
    (menu-bar-mode -1)   ;; Disable menu bar
    (tooltip-mode -1))   ;; Disable tooltip bar

;; Save history
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length 150)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;; Save bookmarks
(setq bookmark-default-file "~/.emacs.d/bookmarks"
      bookmark-save-flag 1) ;; Save after every change

;; Backsup and auto saves
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; Indent setup
(setq-default tab-width 4 indent-tabs-mode nil);; Use 4 space indent
(setq-default c-basic-offset 4 c-default-style "bsd")
(define-key global-map (kbd "RET") 'newline-and-indent);; Autoindent after Enter

;; Parents setup
(show-paren-mode t);;Show matching parents
(electric-pair-mode +1);;Enable Autoclose parents

;;Initialize GUI maximazed
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 )

;; Custom window splitting (opens previous buffer in split)
(defun vsplit-last-buffer ()
  (interactive)
  (split-window-vertically)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
(defun hsplit-last-buffer ()
  (interactive)
   (split-window-horizontally)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
(global-set-key (kbd "C-x 2") 'vsplit-last-buffer)
(global-set-key (kbd "C-x 3") 'hsplit-last-buffer)

(provide 'init-general)

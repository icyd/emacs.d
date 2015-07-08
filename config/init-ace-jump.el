;; Ace jump

(add-to-list 'load-path "~/.emacs.d/ace-jump-mode/")
(require 'ace-jump-mode)
(evil-leader/set-key "," 'ace-jump-word-mode)
(evil-leader/set-key "l" 'ace-jump-line-mode)
(evil-leader/set-key "a" 'ace-jump-char-mode)

(provide 'init-ace-jump)

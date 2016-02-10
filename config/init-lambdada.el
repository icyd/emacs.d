;; Replace 'Lambda' text for symbol
(require 'pretty-lambdada)

(pretty-lambda-for-modes) ;; Activate for emacs' lisp
(add-hook 'python-mode-hook 'turn-on-pretty-lambda-mode) ;; Activate for python

(provide 'init-lambdada)

(require 'pretty-lambdada)

(pretty-lambda-for-modes)
(add-hook 'python-mode-hook 'turn-on-pretty-lambda-mode)

(provide 'init-lambdada)

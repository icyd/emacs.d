;;DTRT-indent (evaluate file to select indentation mode)
(ensure-package-installed 'dtrt-indent)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(provide 'init-dtrt-indent)

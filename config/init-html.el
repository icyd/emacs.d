(require 'emmet-mode)
(add-hook 'html-mode-hook
    (lambda ()
        ;; Default indentation to 2, but let SGML mode guess, too.
        (set (make-local-variable 'sgml-basic-offset) 2)
        (sgml-guess-indent)))

;; (add-hook 'html-mode-hook
;;         (lambda ()
;;           (set (make-local-variable 'sgml-xml-mode) t)))

(defun open-in-firefox ()
  "Open buffer in a browser"
    (interactive)
    (let ((filename (buffer-file-name)))
    (browse-url-firefox (concat "file://" filename))))

(defun open-in-chromium ()
  "Open buffer in a browser"
    (interactive)
    (let ((filename (buffer-file-name)))
    (browse-url-chromium (concat "file://" filename))))

(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda ()
                             (setq emmet-indentation 2)))
(setq emmet-move-cursor-between-quotes t)
(defun keybind-html()
  "Define keybind available in html-mode"
  (evil-leader/set-key "/" 'sgml-close-tag)
  (local-set-key (kbd "C-c z") 'emmet-expand-line)
  (evil-leader/set-key "z" 'emmet-expand-line)
  )

;; (add-hook 'html-mode-hook 'open-in-browser)
(add-hook 'emmet-mode-hook 'keybind-html)
(provide 'init-html)

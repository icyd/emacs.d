(require 'package)

;; List of repositories
(setq package-archives '(
  ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
  ("gnu" . "http://elpa.gnu.org/packages/")
  ;; ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")
  ("org" . "http://orgmode.org/elpa/")))

;; Activate all packages
(package-initialize)

;; Fetch the list of packages available
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not."
  (mapc
   (lambda (package)
     (unless (package-installed-p package)
         (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package))))
   packages))

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(provide 'init-packages)

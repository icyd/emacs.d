(require 'package)

;; List of repositories
(setq package-archives '(
  ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
  ;; ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")
  ("org" . "http://orgmode.org/elpa/")))

;; Activate all packages
(package-initialize)

;; Fetch the list of packages available
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.
Return a list of installed packages or nil for every package not installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         package
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         nil)))
   packages))

(provide 'init-packages)

(require 'package)

;; List of repositories
(setq package-archives '(
  ("gnu" . "http://elpa.gnu.org/packages/")
  ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
  ;;("melpa" . "http://melpa.milkbox.net/packages/")
  ;;("marmalade" . "http://marmalade-repo.org/packages/")
  ("org" . "http://orgmode.org/elpa/")))

(defun filtered-packages (repo packages)
  "Take the repository name and a list of packages
and create a list ((pack1 . repo) (pack2 . repo))"
  (let ((alist-packages ()))
    (dolist (p packages)
      (add-to-list 'alist-packages `(,p . ,repo)))
    alist-packages))

;; Fetch the list of packages available
(defun ensure-package-installed (packages)
  "Assure every package is installed."
  (dolist (p packages)
     (unless (package-installed-p p)
       (package-install p))))

(setq package-pinned-packages
      (filtered-packages "melpa" '(
				   color-theme-solarized
				   evil-tabs
				   evil-surrond
				   powerline-evil
				   dtrt-indent
				   company-quickhelp
				   pos-tip
				   anaconda-mode
				   company-anaconda
				   python-mode
				   pretty-lambdada
				   flycheck-pos-tip
				   )))
(setq package-pinned-packages
      (append package-pinned-packages
              (filtered-packages "melpa-stable" '(
                          fill-column-indicator
						  diminish
						  evil
						  evil-leader
						  evil-nerd-commenter
						  ace-jump-mode
						  company
						  dash
						  pkg-info
						  async
						  helm
						  flycheck
						  markdown-mode
						  ))))
(setq package-pinned-packages
      (append package-pinned-packages
	      (filtered-packages "org" '(org))))

;; Activate all packages
(package-initialize)

;; Refresh if index doesn't exist
(when (null package-archive-contents)
  (package-refresh-contents))

;; Packages to install
(ensure-package-installed '(
			    color-theme-solarized
			    fill-column-indicator
			    diminish
			    evil
			    evil-leader
			    evil-tabs
			    evil-surround
			    evil-nerd-commenter
			    powerline-evil
			    ace-jump-mode
			    dtrt-indent
			    company
			    company-quickhelp
			    company-c-headers
			    pos-tip
			    python-mode
			    anaconda-mode
			    company-anaconda
			    async
			    helm
			    flycheck
			    flycheck-pos-tip
			    pretty-lambdada
			    markdown-mode
			    ))

(provide 'init-packages)

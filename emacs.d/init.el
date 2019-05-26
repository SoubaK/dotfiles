(setq custom-file (make-temp-file "emacs-custom"))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(use-package powerline
  :ensure t
  :config (powerline-default-theme))

(use-package rainbow-delimiters
  :ensure t
  :config (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package highlight-indentation
  :ensure t
  :config (add-hook 'prog-mode-hook 'highlight-indentation-mode))

(use-package which-key
  :ensure t
  :config (which-key-mode))

;(use-package python-mode
;  :ensure t)

(use-package magit
  :ensure t)

(use-package fold-this
  :ensure t
  :bind (("C-x C-<up>" . fold-active-region)
	 ("C-x C-<down>" . fold-this-unfold-at-point)))

;;; Themes configuration
(use-package helm-themes
  :ensure t)

(use-package monokai-theme
  :ensure t )

(use-package spacemacs-theme
  :ensure t)

(use-package sublime-themes
  :ensure t)

(use-package ample-theme
  :ensure t)

(use-package darkokai-theme
  :ensure t)

(use-package solarized-theme
  :ensure t)

(setq custom-file (make-temp-file "emacs-custom"))

(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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
  :config (add-hook 'prog-mode-hook #'highlight-identation-mode))

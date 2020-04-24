(package-initialize)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(ido-mode 1)
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))

(require 'flycheck)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'global-flycheck-mode)
(drag-stuff-global-mode)

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)

(setq-default flycheck-disabled-checkers
	      (append flycheck-disabled-checkers
		      '(javascript-jshint)
		      '(haskell-stack-ghc)))
(setq-default flycheck-temp-prefix ".flycheck")
(flycheck-add-mode 'haskell-ghc 'haskell-mode)
(flycheck-add-mode 'javascript-eslint 'js2-mode)

(drag-stuff-define-keys)

(add-to-list 'auto-mode-alist `(,(rx ".js" string-end) . js2-mode))

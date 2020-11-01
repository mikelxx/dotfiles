(package-initialize)

;; window settings
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-frame-font "SF Mono-12")
(when window-system (set-frame-size (selected-frame) 120 45))
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(ido-mode 1)

;; editing settings
(setq-default indent-tabs-mode nil)
(setq create-lockfiles nil)
(setq ns-alternate-modifier 'meta)
(setq ns-right-alternate-modifier 'none)

;; modes setups
(global-whitespace-mode t)
(setq
 whitespace-style '(face tabs spaces trailing space-before-tab indentation space-after-tab space-mark tab-mark))

(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))

(require 'company)
(setq company-idle-delay 1)
(setq company-minimum-prefix-length 3)
(add-hook 'after-init-hook 'global-company-mode)

(require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)
                      '(python-pylint)))
;; (flycheck-add-mode 'javascript-eslint 'js2-mode)
;; (flycheck-add-mode 'python-pylint 'python-mode)
;; (setf (flycheck-checker-get 'python-pylint 'command)
;;       '("pylint" "-E" source-original))
;; (flycheck-add-mode 'rust-clippy 'rust-mode)

;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (customize-set-variable 'js2-include-node-externs t)

(exec-path-from-shell-initialize)

;; (require 'lsp-mode)
;; (setq lsp-eldoc-render-all t)
;; (lsp-register-custom-settings
;;  '(("gopls.completeUnimported" t t)
;;    ("gopls.staticcheck" t t)))

;; (require 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))

;; (add-hook 'c-mode-hook 'eglot-ensure)
;; (add-hook 'c++-mode-hook 'eglot-ensure)

;; (require 'rust-mode)
;; (with-eval-after-load 'rust-mode
;;   (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
;; (add-hook 'rust-mode-hook 'lsp-deferred)
;; (add-hook 'rust-mode-hook 'yas-minor-mode)

;; (require 'go-mode)
;; (add-hook 'go-mode-hook 'lsp-deferred)
;; (add-hook 'go-mode-hook 'yas-minor-mode)

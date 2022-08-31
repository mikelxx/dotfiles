(load "~/.emacs.d/asm-hook.el")

(package-initialize)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
;; (ido-mode 1)
;; (blink-cursor-mode 0)
(setq-default cursor-type 'bar)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default comment-style 'multi-line)
(setq-default comment-style 'extra-line)
(setq-default display-fill-column-indicator-column 80)
(global-display-fill-column-indicator-mode t)
(global-display-line-numbers-mode)
(when window-system (set-frame-size (selected-frame) 120 45))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-hook 'c++-mode-common-hook
	  (lambda ()
	    (c-set-offset 'inextern-lang 0)))
(add-to-list 'load-path "~/.emacs.d/mypkgs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/mythemes")
(setq custom-file (make-temp-file ".emacs-custom-"))
(add-to-list 'write-file-functions 'delete-trailing-whitespace)
(setq tramp-auto-save-directory "/tmp")
(setq backup-directory-alist '(("/tmp")))
(setq default-directory "~/")
(set-language-environment "UTF-8")

;; remove exec-path-from-shell when on windows !!

(custom-set-variables
 '(package-selected-packages '(exec-path-from-shell editorconfig go-mode rust-mode flycheck helm-lsp multiple-cursors lsp-ui helm-ag helm-gtags helm-xref use-package lsp-mode magit format-all gruber-darker-theme ggtags helm company eglot modus-themes ivy origami))
 '(whitespace-style '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark)))

;; Theme and font

(load-theme 'modus-vivendi t)
;; (set-frame-font "DejaVu Sans Mono-12")
;; (set-frame-font "Source Code Pro-12")
;; (set-frame-font "Fantasque Sans Mono-14")
;; (set-frame-font "Iosevka")
;; (set-frame-font "Fira Code")
;; (set-frame-font "Terminus")
;; (set-frame-font "Hack")
(set-frame-font "Go Mono")

;; Packages

(require 'function-args)
(fa-config-default)

(require 'move-lines)
(move-lines-binding)
(editorconfig-mode 1)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; (require 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) . ("clangd-14" "-j=4" "-background-index" "--log=error" "--clang-tidy" "--enable-config")))

(add-hook 'asm-mode-hook 'asm-mode-not-annoying)

(require 'lsp-mode)
(setq lsp-clients-clangd-args '("-j=4" "-background-index" "--log=error" "--clang-tidy" "--enable-config"))
(setq lsp-clangd-binary-path "/usr/bin/clangd-14")
(setq lsp-idle-delay 0.1)
(setq-default lsp-ui-sideline-show-diagnostics t)
(setq lsp-diagnostics-provider :flycheck)
(setq-default lsp-enable-symbol-highlighting nil)

(require 'company)
(setq company-idle-delay 0.3)
(setq company-minimum-prefix-length 1)
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)

;; (add-hook 'c-mode-hook 'eglot-ensure)
;; (add-hook 'c++-mode-hook 'eglot-ensure)

;; (add-hook 'c-mode-hook 'lsp-deferred)
(add-hook 'c++-mode-hook 'lsp-deferred)

(require 'helm-rg)

(require 'helm)
(require 'helm-config)
(global-set-key (kbd "C-;") 'eglot-rename)
(helm-mode)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)
(global-set-key (kbd "M-p") 'helm-do-ag-project-root)
(global-set-key (kbd "C-q") 'moo-jump-local)

(require 'multiple-cursors)
(global-set-key (kbd "C-'") 'set-rectangular-region-anchor)

(add-hook 'c-mode-hook 'format-all-mode)
(add-hook 'c++-mode-hook 'format-all-mode)

(add-hook 'c-mode-hook 'helm-mode)
(add-hook 'c++-mode-hook 'helm-mode)
(global-whitespace-mode)

(global-origami-mode)
(global-set-key (kbd "<C-return>") 'origami-toggle-node)

(global-set-key (kbd "C-<") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "C->") 'indent-rigidly-right-to-tab-stop)

(global-set-key (kbd "M-\\") 'ff-find-other-file)

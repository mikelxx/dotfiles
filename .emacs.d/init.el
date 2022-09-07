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
;; (setq-default cursor-type 'bar)
(setq-default cursor-type 'box)
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
(setq gc-cons-threshold 100000000)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(custom-set-variables
 '(package-selected-packages '(exec-path-from-shell editorconfig go-mode rust-mode flycheck helm-lsp multiple-cursors lsp-ui helm-ag helm-gtags helm-xref use-package lsp-mode magit format-all gruber-darker-theme ggtags helm company modus-themes ivy origami tree-sitter tree-sitter-langs swiper counsel projectile yasnippet company-posframe ivy-posframe helm-projectile helm-posframe))
 '(whitespace-style '(face tabs trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark)))

;; Theme and font

(load-theme 'modus-vivendi t)
;; (set-frame-font "DejaVu Sans Mono-12")
;; (set-frame-font "Source Code Pro-12")
;; (set-frame-font "Fantasque Sans Mono-14")
;; (set-frame-font "Iosevka-14")
;; (set-frame-font "Fira Code")
;; (set-frame-font "Terminus-12")
;; (set-frame-font "Hack-12")
;; (set-frame-font "JetBrains Mono-12")
;; (set-frame-font "Go Mono-12")
;; (set-frame-font "Liberation Mono-12")
;; (set-face-attribute 'default nil :font "Go Mono-12")
(set-face-attribute 'default nil :font "JetBrains Mono-10.5")

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

;; think about enabling this??: https://emacs-lsp.github.io/lsp-ui/#lsp-ui-peek
(require 'lsp-mode)
(setq lsp-clients-clangd-args '("-j=4" "-background-index" "--log=error" "--clang-tidy" "--enable-config"))
(setq lsp-clangd-binary-path "/usr/bin/clangd-14")
(setq lsp-idle-delay 0.1)
(setq-default lsp-ui-sideline-show-diagnostics t)
(setq-default lsp-ui-doc-show-with-cursor t)
(setq-default lsp-ui-doc-position 'top)
(setq lsp-diagnostics-provider :flycheck)
(setq-default lsp-enable-symbol-highlighting nil)
(setq lsp-rust-server 'rust-analyzer)

(require 'company)
;; (require 'company-posframe)
;; (company-posframe-mode 1)
(setq company-idle-delay 0.3)
(setq company-minimum-prefix-length 1)
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'java-mode-hook 'company-mode)
(add-hook 'rust-mode-hook 'company-mode)
(define-key company-active-map (kbd "<tab>") #'company-complete-selection)
(add-hook 'c++-mode-hook '(lambda ()
                            (setq company-backends '(company-capf company-dabbrev))))

;; (add-hook 'c-mode-hook 'eglot-ensure)
;; (add-hook 'c++-mode-hook 'eglot-ensure)

;; (add-hook 'c-mode-hook 'lsp-deferred)
(add-hook 'c++-mode-hook 'lsp-deferred)
;; (add-hook 'java-mode-hook 'lsp-deferred)

(exec-path-from-shell-initialize)

(require 'yasnippet)
(yas-global-mode)

(require 'ivy)
;; (require 'ivy-posframe)
(require 'swiper)
(require 'counsel)
;; (require 'ivy-xref)
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
;; (ivy-posframe-mode)
(define-key global-map [remap find-file] #'counsel-find-file)
(define-key global-map [remap switch-to-buffer] #'ivy-switch-buffer)
(define-key global-map [remap execute-extended-command] #'counsel-M-x)
(define-key global-map [remap isearch-forward] #'swiper)
;; (define-key global-map [remap isearch-backward] #'swiper-backward)
(ivy-mode)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t) ;; this is a bullshit option don't fucking use that
(global-set-key (kbd "C-c s") 'counsel-rg)
(global-set-key (kbd "C-c p") 'counsel-projectile)
(setq-default xref-show-definitions-function #'ivy-xref-show-defs)

(projectile-mode +1)

;; HELM config
;; (require 'helm-rg)
;; (require 'helm)
;; (require 'helm-config)
;; (helm-mode)
;; (define-key global-map [remap find-file] #'helm-find-files)
;; (define-key global-map [remap switch-to-buffer] #'helm-mini)
;; (define-key global-map [remap execute-extended-command] #'helm-M-x)
;; (global-set-key (kbd "C-c s") 'helm-do-ag-project-root)
;; (define-key global-map [remap isearch-forward] #'helm-swoop)

;; (global-set-key (kbd "C-;") 'eglot-rename)

(require 'tree-sitter)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
(global-tree-sitter-mode)

(global-set-key (kbd "C-q") 'moo-jump-local)

(require 'multiple-cursors)
(global-set-key (kbd "C-'") 'set-rectangular-region-anchor)

;; (add-hook 'c-mode-hook 'format-all-mode)
;; (add-hook 'c++-mode-hook 'format-all-mode)
;; (add-hook 'java-mode-hook 'format-all-mode)

;; (add-hook 'c-mode-hook 'helm-mode)
;; (add-hook 'c++-mode-hook 'helm-mode)
;; (add-hook 'java-mode-hook 'helm-mode)
;; (global-whitespace-mode)

(autoload 'jakt-mode "jakt-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.jakt\\'" . jakt-mode))

(global-origami-mode)
(global-set-key (kbd "<C-return>") 'origami-toggle-node)

(global-set-key (kbd "C-<") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "C->") 'indent-rigidly-right-to-tab-stop)

(global-set-key (kbd "M-\\") 'projectile-find-other-file)

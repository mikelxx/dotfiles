(package-initialize)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-default-font "Ubuntu Mono-16")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" default)))
 '(frame-brackground-mode (quote dark))
 '(package-selected-packages (quote (magit gruber-darker-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq make-backup-files nil)
(ido-mode 1)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key [?\C-,] 'replace-string)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'sr-speedbar)
(when window-system (set-frame-size (selected-frame) 135 45))

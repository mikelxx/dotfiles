(exec-path-from-shell-initialize)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(set-face-attribute 'default nil :font "SF Mono:size=12")

(setq ns-alternate-modifier 'meta
      ns-right-alternate-modifier 'none
      initial-frame-alist '((top . 40) (left . 10) (width . 128) (height . 68))
      default-frame-alist '((top . 40) (left . 10) (width . 128) (height . 68)))

(setq-default line-spacing 0.1)

(tool-bar-mode 1)

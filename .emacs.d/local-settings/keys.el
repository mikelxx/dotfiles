(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-set-key (kbd "C-c C-SPC") 'mc/edit-lines)
(global-set-key (kbd "C-c C-p") 'projectile-find-file)
(global-set-key (kbd "C-c '") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-c g") 'highlight-symbol)
(global-set-key (kbd "C-c <") 'highlight-symbol-prev)
(global-set-key (kbd "C-c >") 'highlight-symbol-next)
(global-set-key (kbd "C-c s") 'rg)
(global-set-key (kbd "C-<") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "C->") 'indent-rigidly-right-to-tab-stop)
(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "M-n") 'flymake-goto-next-error)
(global-set-key (kbd "M-p") 'flymake-goto-prev-error)
(global-set-key (kbd "M-<return>") 'eglot-code-actions)

(define-key eglot-mode-map [C-down-mouse-1] 'xref-find-definitions-at-mouse)
(define-key dired-mode-map [mouse-2] 'dired-mouse-find-file)

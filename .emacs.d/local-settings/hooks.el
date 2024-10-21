(add-hook 'after-init-hook 'recentf-open-files)

(add-hook 'c++-mode-hook '(lambda ()
                            (setq display-fill-column-indicator 101)
                            (setq c-basic-offset 4)
                            (setq indent-tabs-mode nil)
                            (dtrt-indent-mode)))

(add-hook 'c-mode-hook '(lambda ()
                          (setq display-fill-column-indicator 81)
                          (setq c-basic-offset 4)
                          (setq indent-tabs-mode nil)
                          (dtrt-indent-mode)))

(add-hook 'java-mode-hook '(lambda ()
                             (setq display-fill-column-indicator 121)
                             (setq c-basic-offset 4)
                             (setq indent-tabs-mode nil)))

(add-hook 'go-mode-hook '(lambda ()
                           (setq display-fill-column-indicator nil)))

(add-hook 'org-mode-hook '(lambda ()
                            (setq cursor-type 'bar)))

(add-hook 'eldoc-mode-hook 'eldoc-box-hover-mode)

(add-hook 'LaTeX-mode-hook '(lambda ()
                              (prettify-symbols-mode 1)))

(add-hook 'jai-mode-hook '(lambda ()
                            (setq display-fill-column-indicator nil)))

(add-hook 'lisp-mode-hook '(lambda ()
                             (slime-mode)))

(add-hook 'tuareg-mode-hook '(lambda ()
                               (merlin-mode)))

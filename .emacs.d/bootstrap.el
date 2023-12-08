(setq package-list
      '(exec-path-from-shell
        magit
        yasnippet
        projectile
        counsel
        counsel-projectile
        ivy
        swiper
        dtrt-indent
        centered-window
        highlight-symbol
        multiple-cursors
        gruber-darker-theme
        haskell-mode
        erlang
        go-mode
        rust-mode
        cmake-mode
        tuareg
        standard-themes))

(defun local-bootstrap-packages ()
  (interactive)
  (package-refresh-contents)
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

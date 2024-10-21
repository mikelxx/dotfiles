(setq package-list
      '(exec-path-from-shell
        magit
        yasnippet
        projectile
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
        zig-mode
        tuareg
        standard-themes
        nyan-mode
        company
        eldoc-box
        rg
        auctex
        powershell
        use-package
        markdown-mode
        editorconfig
        solarized-theme
        latex-preview-pane
        almost-mono-themes
        white-sand-theme
        slime
        merlin))

(defun local-bootstrap-packages ()
  (package-refresh-contents)
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

(unless (file-exists-p "~/.emacs.d/.initialized-packages")
  (local-bootstrap-packages)
  (write-region "" nil "~/.emacs.d/.initialized-packages"))

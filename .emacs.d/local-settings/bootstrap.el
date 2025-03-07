(setq package-list
      '(exec-path-from-shell
        magit
        yasnippet
        projectile
        dtrt-indent
        centered-window
        highlight-symbol
        multiple-cursors
        nyan-mode
        company
        eldoc-box
        rg
        auctex
        use-package
        editorconfig
        latex-preview-pane
        slime
        merlin

        ;; Themes
        gruber-darker-theme
        standard-themes
        almost-mono-themes
        white-sand-theme
        solarized-theme
        ef-themes

        ;; Language modes
        haskell-mode
        swift-mode
        csharp-mode
        erlang
        go-mode
        rust-mode
        cmake-mode
        zig-mode
        tuareg
        lua-mode
        meson-mode
        markdown-mode
        powershell
        ada-mode
        kotlin-mode
        scala-mode))

(defun local-bootstrap-packages ()
  (package-refresh-contents)
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

(unless (file-exists-p "~/.emacs.d/.initialized-packages")
  (local-bootstrap-packages)
  (write-region "" nil "~/.emacs.d/.initialized-packages"))

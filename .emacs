(package-initialize)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-default-font "Ubuntu Mono-10")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (gruber-darker)))
 '(custom-safe-themes
   (quote
    ("6731049cee8f7cbd542d7b3e1c551f3fab716a92119bd7c77f0bd1ef20849fb8" "51956e440cec75ba7e4cff6c79f4f8c884a50b220e78e5e05145386f5b381f7b" "72fda75af7caddec17ba9b49d2f99703c20a5f5f5c4dcec641d34a0b83569e88" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "d5d2ab76985738c142adbe6a35dc51c8d15baf612fdf6745c901856457650314" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "a038af4fff7330f27f4baec145ef142f8ea208648e65a4b0eac3601763598665" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "7c4cfa4eb784539d6e09ecc118428cd8125d6aa3053d8e8413f31a7293d43169" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "774aa2e67af37a26625f8b8c86f4557edb0bac5426ae061991a7a1a4b1c7e375" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "6bacece4cf10ea7dd5eae5bfc1019888f0cb62059ff905f37b33eec145a6a430" "777a3a89c0b7436e37f6fa8f350cbbff80bcc1255f0c16ab7c1e82041b06fccd" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "6de37d6d573e18138aa948683c8ff0e72b89e90d1cdbf683787ea72f8e6295ab" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "1c8171893a9a0ce55cb7706766e57707787962e43330d7b0b6b0754ed5283cda" "001e4dbbdb8d01bb299c0244c489504d51ef5939ace24049079b377294786f7c" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "a339f231e63aab2a17740e5b3965469e8c0b85eccdfb1f9dbd58a30bdad8562b" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "8e797edd9fa9afec181efbfeeebf96aeafbd11b69c4c85fa229bb5b9f7f7e66c" "2b9dc43b786e36f68a9fd4b36dd050509a0e32fe3b0a803310661edb7402b8b6" "b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "179ff455fbab61b1c5be8da791c53c4a2b65598dc372031be1e95373bd9a1f25" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" default)))
 '(fci-rule-color "#5B6268")
 '(frame-brackground-mode (quote dark))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(jdee-db-active-breakpoint-face-colors (cons "#2b2a27" "#ff5d38"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#2b2a27" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#2b2a27" "#3f444a"))
 '(objed-cursor-color "#ff5d38")
 '(package-selected-packages
   (quote
    (direx treemacs rust-mode neotree indium smart-mode-line smart-mode-line-powerline-theme nodejs-repl multiple-cursors gruvbox-theme dracula-theme spacemacs-theme csharp-mode go-mode haskell-mode company magit gruber-darker-theme)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(rustic-ansi-faces
   ["#2b2a27" "#ff5d38" "#98be65" "#bcd42a" "#51afef" "#c678dd" "#46D9FF" "#ede0ce"])
 '(vc-annotate-background "#2b2a27")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#a4c551")
    (cons 60 "#b0cc3d")
    (cons 80 "#bcd42a")
    (cons 100 "#c1a623")
    (cons 120 "#c5781c")
    (cons 140 "#cb4b16")
    (cons 160 "#c95a58")
    (cons 180 "#c7699a")
    (cons 200 "#c678dd")
    (cons 220 "#d96fa6")
    (cons 240 "#ec666f")
    (cons 260 "#ff5d38")
    (cons 280 "#cf563c")
    (cons 300 "#9f5041")
    (cons 320 "#6f4a45")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(ido-mode 1)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("gnu" . "https://elpa.gnu.org/packages/"))
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "C-c C-,") 'replace-string)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(when window-system (set-frame-size (selected-frame) 150 50))
(setq backup-directory-alist      `(("." . "~/.emacs.d/backups")))
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))
(global-set-key (kbd "C-c C-.") 'mc/mark-all-like-this)
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(add-to-list 'auto-mode-alist `(,(rx ".js" string-end) . js2-mode))

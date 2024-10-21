;;; high-theme.el --- high
;;; Version: 1.0
;;; Commentary:
;;; A theme called high
;;; Code:

(deftheme high "DOCSTRING for high")
  (custom-theme-set-faces 'high
   '(default ((t (:foreground "#b9d4ca" :background "#13002f" ))))
   '(cursor ((t (:background "#65f790" ))))
   '(fringe ((t (:background "#221831" ))))
   '(mode-line ((t (:foreground "#acffff" :background "#590667" ))))
   '(mode-line-inactive ((t (:background "#000000"))))
   '(region ((t (:background "#3b3149" ))))
   '(secondary-selection ((t (:background "#413a4b" ))))
   '(font-lock-builtin-face ((t (:foreground "#8cae96" ))))
   '(font-lock-comment-face ((t (:foreground "#ffa753" ))))
   '(font-lock-function-name-face ((t (:foreground "#b9d4ca" ))))
   '(font-lock-keyword-face ((t (:foreground "#77cfff" :weight bold))))
   '(font-lock-string-face ((t (:foreground "#ffa753"))))
   '(font-lock-type-face ((t (:foreground "#96bb8d" :weight bold))))
   '(font-lock-constant-face ((t (:foreground "#6aff95" ))))
   '(font-lock-variable-name-face ((t (:foreground "#b9d4ca" ))))
   '(minibuffer-prompt ((t (:foreground "#93a5ff" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'high)

;;; high-theme.el ends here

;; https://stackoverflow.com/a/50855606
(defun asm-mode-not-annoying ()
  (local-unset-key (vector asm-comment-char)) ; unset semicolon autocommenting
  (electric-indent-local-mode 0)
  (defun asm-calculate-indentation ()
    (or
     (and (looking-at "[.@_[:word:]]+:") 0)
     (and (looking-at "\\s<\\s<\\s<") 0)
     (and (looking-at "%") 0)
     (and (looking-at "c?global\\|section\\|default\\|align\\|INIT_..X") 0)
     (or 4))))

(exec-path-from-shell-initialize)

(setq default-day-theme 'white-sand
      default-night-theme 'yabaki)

(ignore-errors
  (require 'ansi-color)
  (defun local-colorize-compilation-buffer ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))
  (add-hook 'compilation-filter-hook 'local-colorize-compilation-buffer))

(load-theme-by-time)
(run-with-timer 0 (* 30 60) #'load-theme-by-time)

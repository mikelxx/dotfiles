(setq initial-frame-alist '((top . 40) (left . 10) (width . 120) (height . 50))
      default-frame-alist '((top . 40) (left . 10) (width . 120) (height . 50))
      split-height-threshold nil
      split-width-threshold 0
      default-day-theme 'standard-light
      default-night-theme 'standard-dark)

(setq-default cursor-type 'bar)

(load-theme 'ayu-dark t)

(set-face-attribute 'default nil :font "Consolas" :height 110)

(let ((faces
       '(mode-line
         mode-line-buffer-id
         mode-line-emphasis
         mode-line-highlight
         mode-line-inactive)))
  (mapc
   (lambda (face) (set-face-attribute face nil :font "Segoe UI" :height 100))
  faces))

;; (load-theme-by-time)
;; (run-with-timer 0 (* 30 60) #'load-theme-by-time)

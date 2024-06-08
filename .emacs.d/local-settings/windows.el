(set-face-attribute 'default nil :font "Iosevka:size=14")

(setq initial-frame-alist '((top . 40) (left . 10) (width . 240) (height . 50))
      default-frame-alist '((top . 40) (left . 10) (width . 240) (height . 50))
      split-height-threshold nil
      split-width-threshold 0
      default-day-theme 'solarized-selenized-light
      default-night-theme 'solarized-selenized-black)

(split-window-horizontally)
(load-theme-by-time)
(run-with-timer 0 (* 30 60) #'load-theme-by-time)

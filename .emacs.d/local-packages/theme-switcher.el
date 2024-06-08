;;; theme-switcher.el --- Simple time based theme switcher

;; Copyright (C) 2024 Michal Lach

;; Author: Michal Lach <misspelledcocteau@gmail.com>
;; Version: 1.0
;; Keywords: theme

;;; Code:

(defcustom default-day-theme 'standard-light
  "Default daytime theme"
  :group 'theme-switcher
  :type '(const :tag 'standard-light nil))

(defcustom default-night-theme 'standard-dark
  "Default nighttime theme"
  :type '(const :tag 'standard-dark nil))

(defcustom theme-day-switch-hour 8
  "Time at which the theme is switched to a daytime theme"
  :group 'theme-switcher
  :type '(integer))

(defcustom theme-night-switch-hour 20
  "Time at which the theme is switched to a nighttime theme"
  :group 'theme-switcher
  :type '(integer))

(defun load-theme-by-time ()
  "Load set theme based on current time"
  (setq hour (string-to-number (substring (current-time-string) 11 13)))
  (mapcar #'disable-theme custom-enabled-themes)
  (if (and (< theme-night-switch-hour 20) (< theme-day-switch-hour hour))
      (load-theme default-day-theme t)
    (load-theme default-night-theme t)))

(provide 'theme-switcher)

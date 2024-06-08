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

(defun load-theme-by-time ()
  "Load set theme based on current time"
  (setq hour (string-to-number (substring (current-time-string) 11 13)))
  (mapcar #'disable-theme custom-enabled-themes)
  (if (and (< hour 20) (< 8 hour))
      (load-theme default-day-theme t)
    (load-theme default-night-theme t)))

(provide 'theme-switcher)

(setq user-full-name "Alessandra Bilardi"
      user-mail-address "alessandra.bilardi@gmail.com")

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; disable startup screen
(setq inhibit-startup-screen t)

;; date time
(setq display-time-day-and-date t
      display-time-24hr-format t)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(display-time-mode 1)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; indentation
(setq-default indent-tabs-mode nil) 
(setq-default tab-width 2)
(global-set-key (kbd "RET") 'newline-and-indent)

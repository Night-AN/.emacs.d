
;;FILE: init-ui.el
;;AUTHOR: Flute
;;FUNCTION: This file is an ui configuration

;;menu
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;line-number-mode
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

(use-package all-the-icons
  :defer 2
  :if(display-graphic-p))

(use-package all-the-icons-ivy
  :defer 2)
(use-package all-the-icons-ivy-rich
  :defer 2)
(use-package all-the-icons-dired
  :defer 2)

;;(use-package smart-mode-line
;;  :ensure t
;;  :config
;;  (setq sml/theme 'respectful)
;;
;;)

;;theme
;;(use-package solarized-theme
;;  :ensure t
;;  :config
;;  (load-theme 'solarized-light-high-contrast))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "This Flute editor")
  ;;(Setq dashboard-startup-banner [NULL])
  (setq dashboard-center-content t)
  (setq dashboard-icon-type 'all-the-icons)
  )


 (provide 'init-ui)

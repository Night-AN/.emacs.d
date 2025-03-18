;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

(setq default-directory "~/.emacs.d/etc")
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/etc/")

(require 'init-options)
(require 'init-enhance)
(require 'init-custome)
(require 'init-elpa)


(require 'init-snippet)
(require 'init-swiper)
(require 'init-company)
(require 'init-projectile)
(require 'init-treemacs
)

(provide 'init)

;;; init.el ends here


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e"
     "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa"
     default))
 '(package-selected-packages
   '(amx company-box company-lsp company-tabnine counsel
	 counsel-projectile dashboard embark flycheck lsp-java lsp-ui
	 marginalia projectile rainbow-delimiters smart-mode-line
	 undo-tree yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

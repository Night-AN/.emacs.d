;;; init-custome.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file is bootstrap about elpa
;; a number of other files.

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(amx cmake-font-lock cmake-mode company-box company-tabnine
	 counsel-projectile dashboard embark evil flycheck
	 init-enhance lsp-java lsp-ui marginalia rainbow-delimiters
	 smart-mode-line solarized-theme undo-tree yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-custome)
;; init-custome.el ends here

;;; init-enhance.el --- This is a configuration about enhance by original -*- lexical-binding: t -*-

;; Copyright (C) 2025 Shaw

;; Author: Shaw <2754781659@qq.com>
;; Version: 0.1

;;; Commentary:
;; As title

;;; Code:

;; M-x History
(use-package amx
  :ensure t
  :init (amx-mode)
  :config
  (unless (file-exists-p "~/.emacs.d/.cache")
    (make-directory "~/.emacs.d/.cache"))
  ((setq amx-save-file "~/.emacs.d/.cache/amx-items"))
  )

;; Switch window
(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

;; undo-tree
(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil))

;; mode-line
(use-package smart-mode-line
  :ensure t
  :init (sml/setup)
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'dark)
  )

;; marginalia
(use-package marginalia
  :ensure t
  :init (marginalia-mode)
  :bind (:map minibuffer-local-map
	      ("M-A" . marginalia-cycle)))

;; embark
(use-package embark
  :ensure t
  :init
  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)
  :config
  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none))))
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings))) ;; alternative for `describe-bindings'

;; rainbow-delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; dashboard
 (use-package dashboard
  :ensure t
  :config
  (setq dashboard-banner-logo-title "Welcome to Emacs!")
  (setq dashboard-startup-banner 'official)
  (setq dashboard-items '((recents  . 5)
			  (bookmarks . 5)
			  (projects . 10)))
  (dashboard-setup-startup-hook)
  )

(provide 'init-enhance)
;;; init-enhance.el ends here

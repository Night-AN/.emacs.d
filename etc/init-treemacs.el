;;; init-treemacs.el --- This is a configuration about treemacs -*- lexical-binding: t -*-

;; Copyright (C) 2025 Shaw

;; Author: Shaw <2754781659@qq.com>
;; Version: 0.1

;;; Commentary:
;; As title

;;; Code:

(use-package treemacs
  :ensure t
  :defer t
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag))
  (:map treemacs-mode-map
	("/" . treemacs-advanced-helpful-hydra))
  :config
  ;; Ensure the .cache directory exists
  (unless (file-exists-p "~/.emacs.d/.cache")
    (make-directory "~/.emacs.d/.cache"))

  ;; Set treemacs-persist file location
  (setq treemacs-persist-file "~/.emacs.d/.cache/treemacs-persist")
  )


(provide 'init-treemacs)
;;; init-treemacs.el ends here

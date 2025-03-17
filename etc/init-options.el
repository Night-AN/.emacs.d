;;; init-options.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; yes-no to y-n
(fset 'yes-or-no-p'y-or-n-p)

;; Set Default Fonts
(set-face-attribute 'default nil :font "Consolas-12")
(set-fontset-font t 'han "Microsoft YaHei")

;; Set Language Environment
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq inhibit-startup-screen t)

;; Start by graphic mode force
(if (display-graphic-p)
    (progn
      (menu-bar-mode 1)
      (tool-bar-mode 1)
            (scroll-bar-mode 1)))
(setq make-backup-files nil)

;; Confirm if kill emacs
(setq confirm-kill-emacs #'yes-or-no-p)

;; Pair
(electric-pair-mode t)

;; Highlight Pair
(add-hook 'prog-mode-hook #'show-paren-mode)

;; Linum
(column-number-mode t)
(setq display-line-numbers-type 'relative)
(display-line-numbers-mode 1)

;; Auto Refresh file
(global-auto-revert-mode t)

;; Save buffer history
(savehist-mode 1)

;; Inhibit every thing when start
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Disable custom prompt
(setq custom-prompt-themes t)

(setq savehist-file "~/.emacs.d/.cache/history")
(setq recentf-save-file "~/.emacs.d/.cache/recentf")
(setq projectile-bookmarks-file "~/.emacs.d/.cache/projectile-bookmarks.eld")

;; Make sure auto-save-list is exist
(unless (file-exists-p "~/.emacs.d/.cache/auto-save-list")
  (make-directory "~/.emacs.d/.cache/auto-save-list" t))
(setq auto-save-list-file-prefix "~/.emacs.d/.cache/auto-save-list/.saves-")

;; Make sure auto-save dir is exist
(unless (file-exists-p "~/.emacs.d/.cache/auto-save")
  (make-directory "~/.emacs.d/.cache/auto-save" t))

;; Set auto-save files location
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/.cache/auto-save/") t)))

;; Enable with t if you prefer
(defconst *spell-check-support-enabled* nil) 
(defconst *is-a-mac* (eq system-type 'darwin))

;; Adjust garbage collection thresholds during startup, and thereafter

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
	                (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(provide 'init-options)
;;; init-options.el ends here

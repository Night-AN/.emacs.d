;;; init-company.el --- This is configuration is all about company -*- lexical-binding: t -*-

;; Copyright (C) 2025 Shaw

;; Author: Shaw <2754781659@qq.com>
;; Version: 0.1

;;; Commentary:
;; As title

;;; Code:

(use-package company
  :ensure t
  :init
  (global-company-mode t)
  :config
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-limit 10)
  (setq company-frontends
        '(company-preview-frontend
          company-pseudo-tooltip-unless-just-one-frontend
          company-echo-metadata-frontend))
  (setq company-echo-truncate-lines t)
  (setq company-backends
      '(company-capf
        company-tabnine
        company-keywords
        company-files
        company-yasnippet))
  
  :bind (
         :map company-active-map
         (("C-n"   . company-select-next)
	  ("C-p"   . company-select-previous)
	  ("C-d"   . company-show-doc-buffer)
	  ("<tab>" . company-complete))
         )
  )

(use-package company-box
  :disabled
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package company-tabnine
  :ensure t
  :init
  (add-to-list 'company-backends #'company-tabnine)
  :config
  (setq company-tabnine-max-num-results 5 )
  (setq company-tabnine-always-trigger nil)
  (setq company-tabnine-wait 0.2)
  )

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-enable-snippet t)
  :hook
  ((java-mode . lsp)
   (cmake-mode . lsp-deferred))
  )

(use-package lsp-java
  :ensure t
  :config
  (setq lsp-java-server-install-dir "~/.emacs.d/.cache/jdt-language-server-latest/")
 ;;(setq lsp-java-jdt-download-url "http://download.eclipse.org/che/che-ls-jdt/snapshots/che-jdt-language-server-latest.tar.gz")
  )

(use-package cmake-mode
  :ensure t
  :mode ("CMakeLists\\.txt\\'" "\\.cmake\\'")
  :hook (
         (cmake-mode . cmake-font-lock-activate)
         ))

(use-package cmake-font-lock
  :ensure t
  :after cmake-mode
  :config (cmake-font-lock-activate)
  )
  

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'init-company)
;;; init-company.el ends here

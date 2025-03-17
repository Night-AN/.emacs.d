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
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10)
  (setq company-dabbrev-downcase nil)
  (setq company-backends 'company-yasnippet)
  (setq company-backends
        '((company-dabbrev
           company-abbrev
           company-yasnippet
           )
          (company-capf ))
  )
  :bind (
         :map company-active-map
         (("C-n"   . company-select-next)
          ("C-p"   . company-select-previous)
          ("C-d"   . company-show-doc-buffer)
          ("<tab>" . company-complete))
         )
  )

(use-package company-tabnine
  :ensure t
  :init (add-to-list 'company-backends #'company-tabnine))

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-enable-snippet t)
  :hook
  ((python-mode . lsp)
   (go-mode . lsp) 
   (js-mode . lsp)     
   (rust-mode . lsp)
   (java-mode . lsp)
   ))

(use-package lsp-java
  :ensure t
  :config (add-hook 'java-mode-hook 'lsp)
  )


(provide 'init-company)
;;; init-company.el ends here

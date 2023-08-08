;;FILE: init-company.el
;;AUTHOR: Flute
;;Function: This is a file of company

(use-package company
  :ensure t
  :hook
  (prog-mode . company-mode))
(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package yasnippet
  :ensure t
  :defer t
  :hook
  (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all)
  (setq yas-snippet-dirs '("~/.emacs.d/bin/snippets/"))
  (define-key yas-minor-mode-map (kbd "<tab>")nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "SPC") yas-maybe-expand)
  (global-set-key (kbd "C-c y") 'company-yasnippet))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-enable-snippet t)
  (setq lsp-enable-comoletion-at-point t)
)


(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package flycheck
  :ensure t
  :config
  (setq truncate-lines nil)
  :hook
  (prog-mode . flycheck-mode))
(provide 'init-company)

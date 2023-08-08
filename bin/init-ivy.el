;;FILE: init-ivy.el
;;AUTHOR: Flute
;;FUNCTION: This is an ivy file

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  :bind
  (("C-c C-r" . 'ivy-resume)))
(use-package counsel
  :ensure t
  :bind
  (("C-x C-f" . 'counsel-find-file)))

(use-package swiper
  :ensure t)


(provide 'init-ivy)

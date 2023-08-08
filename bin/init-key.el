;;FILE init-hydra
;;AUTHOR: Flute
;;Description: None

(use-package hydra
  :defer 1
  :ensure t)


(global-set-key (kbd "C-c h") 'menu/body)

(defhydra menu ()
  ""
  ())

(use-package which-key
  :defer 1
  :ensure t)

(provide 'init-key)

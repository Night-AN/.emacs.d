;;; init-swiper.el --- This is a configuration about swiper -*- lexical-binding: t -*-

;; Copyright (C) 2025 Shaw

;; Author: Shaw <2754781659@qq.com>
;; Version: 0.1

;;; Commentary:
;; The configuraiton is all about swiper configuration

;;; Code:

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  )

(use-package swiper
  :ensure t
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper-backward))
  )

(use-package counsel
  :ensure t
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)))

(provide 'init-swiper)
;;; init-swiper.el ends here

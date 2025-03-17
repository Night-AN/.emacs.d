;;; init-elpa.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file is bootstrap about elpa
;; a number of other files.

;;; Code:

(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
			 ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
(package-initialize)

;; Check if use-package is installed
(unless (package-installed-p 'use-package)
  ;; If not install, then install it
  (package-refresh-contents)
  (package-install 'use-package))

;; Ensure use-pacakge is loaded
(eval-when-compile
  (require 'use-package))

(provide 'init-elpa)
;; init-elpa.el ends here

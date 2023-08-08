;;FILE: init.el
;;AUTHOR: Flute
;;FUNCTION: this is an file import file

;;Add io
(setq read-process-output-max (* 1024 1024 10))
(setq gc-cons-threshold most-positive-fixnum)
(setq default-directory "~/.emacs.d/bin/")
(add-to-list 'load-path "~/.emacs.d/bin/")
(require 'config)
(require 'custom)
(require 'init-package)
(require 'init-ui)
(require 'init-ivy)
(require 'init-company)
(require 'init-tools)
(require 'init-git)
(require 'init-treemacs)
(require 'init-key)

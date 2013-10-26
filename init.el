(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(add-hook 'after-init-hook (lambda () (load-file "~/.emacs.d/config/init.el")))

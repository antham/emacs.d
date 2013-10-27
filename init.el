;; Load packages
(load-file "~/.emacs.d/config/package.el")

;; Load init
(add-hook 'after-init-hook (lambda() (load-file "~/.emacs.d/config/init.el")))

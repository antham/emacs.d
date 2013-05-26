(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-hook 'after-init-hook (lambda () (load-file "~/.emacs.d/config/init.el")))

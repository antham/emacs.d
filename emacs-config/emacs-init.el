(server-start)

;;## Library path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/anything-config"))
;; (add-to-list 'load-path "~/.emacs.d/jabber")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/magit"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/mk-project"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/yasnippet"))

(require 'ack)
(require 'anything)
(require 'anything-config)
(require 'anything-ack)
(require 'anything-match-plugin)
(require 'anything-traverse)
(require 'anything-c-moccur)
(require 'auto-complete-config)
(require 'autopair)
(require 'backup-each-save)
(require 'browse-kill-ring)
(require 'browse-kill-ring+)
(require 'color-theme)
(require 'dired+)
(require 'django-html-mode)
(require 'etags-select)
(require 'flymake)
(require 'git)
(require 'globalff)
(require 'grep-buffers)
;;(require 'jabber)
(require 'magit)
(require 'mk-project)
(require 'show-wspace)
(require 'traverselisp)
(require 'w3m-load)
(require 'xclip)
(require 'yaml-mode)
(require 'yasnippet)
(require 'zencoding-mode)

(load-file "~/.emacs.d/emacs-config/emacs-appearance.el")
(load-file "~/.emacs.d/emacs-config/emacs-buffers-and-files.el")
(load-file "~/.emacs.d/emacs-config/emacs-coding-part.el")
(load-file "~/.emacs.d/emacs-config/emacs-custom.el")
(load-file "~/.emacs.d/emacs-config/emacs-edition.el")
(load-file "~/.emacs.d/emacs-config/emacs-key.el")
(load-file "~/.emacs.d/emacs-config/emacs-misc.el")
(load-file "~/.emacs.d/emacs-config/emacs-perso.el")

(load-file "~/.emacs.d/projects/init.el")
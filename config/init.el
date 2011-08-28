(server-start)

;; Library paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/anything"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/anything/anything-config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/auto-complete"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/auto-complete/auto-complete"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/backup-system"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/color-theme"))
;; (add-to-list 'load-path "~/.emacs.d/library/jabber")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/magit"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/mk-project"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/switch-window"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/undo-tree"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/yasnippet"))

(require 'ac-dabbrev)
(require 'ack)
(require 'ansi-color)
(require 'anything)
(require 'anything-config)
(require 'anything-ack)
(require 'anything-match-plugin)
(require 'anything-traverse)
(require 'anything-c-moccur)
(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-etags)
(require 'autopair)
(require 'backup-system)
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
;; (require 'jabber)
(require 'kill-ring-search)
(require 'magit)
(require 'mime-w3m)
(require 'mk-project-anything)
(require 'shell-pop)
(require 'show-wspace)
(require 'switch-window)
(require 'traverselisp)
(require 'undo-tree)
(require 'w3m-load)
(require 'wgrep)
(require 'xcscope)
(require 'xclip)
(require 'yaml-mode)
(require 'yasnippet)
(require 'zencoding-mode)

;; Functions
(load-file "~/.emacs.d/functions/indent.el")
(load-file "~/.emacs.d/functions/insert-text.el")
(load-file "~/.emacs.d/functions/file.el")
(load-file "~/.emacs.d/functions/misc.el")
(load-file "~/.emacs.d/functions/term.el")

;; Configuration
(load-file "~/.emacs.d/config/appearance.el")
(load-file "~/.emacs.d/config/buffers-and-files.el")
(load-file "~/.emacs.d/config/coding.el")
(load-file "~/.emacs.d/config/edition.el")
(load-file "~/.emacs.d/config/key.el")
(load-file "~/.emacs.d/config/misc.el")
(load-file "~/.emacs.d/config/perso.el")

(load-file "~/.emacs.d/projects/init.el")

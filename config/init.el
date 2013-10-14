;; Library paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/backup-system"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/yasnippet"))

(require 'anything)
(require 'anything-config)
(require 'anything-ack)
(require 'anything-gtags)
(require 'anything-traverse)
(require 'ascope)
(require 'auto-complete)
(require 'auto-complete-config)
(require 'autopair)
(require 'backup-system)
(require 'color-moccur)
(require 'color-theme)
(require 'dired+)
(require 'django-html-mode)
(require 'flymake)
(require 'http-twiddle)
(require 'ido-vertical-mode)
(require 'mime-w3m)
(require 'saveplace)
(require 'shell-pop)
(require 'show-wspace)
(require 'traverselisp)
(require 'uniquify)
(require 'w3m-load)
(require 'wgrep)
(require 'xclip)
(require 'yaml-mode)
(require 'yasnippet)

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

(if (file-exists-p "~/.emacs.d/config/perso.el")
    (load-file "~/.emacs.d/config/perso.el")
  )

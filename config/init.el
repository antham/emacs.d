;; Load custom file
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

;; Library paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d/library/backup-system"))

;; Functions
(load-file "~/.emacs.d/functions/indent.el")
(load-file "~/.emacs.d/functions/insert-text.el")
(load-file "~/.emacs.d/functions/file.el")
(load-file "~/.emacs.d/functions/misc.el")
(load-file "~/.emacs.d/functions/term.el")

;; Configuration
(load-file "~/.emacs.d/config/def.el")
(load-file "~/.emacs.d/config/key.el")

(if (file-exists-p "~/.emacs.d/config/perso.el")
    (load-file "~/.emacs.d/config/perso.el")
  )

;; Load packages
(load-file "~/.emacs.d/config/package-list.el")
(load-file "~/.emacs.d/config/package.el")

;; Load custom file
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

;; Functions
(load-file "~/.emacs.d/functions/file.el")
(load-file "~/.emacs.d/functions/misc.el")
(load-file "~/.emacs.d/functions/term.el")

;; Configuration
(load-file "~/.emacs.d/config/def.el")
(load-file "~/.emacs.d/config/key.el")

(if (file-exists-p "~/.emacs.d/config/perso.el")
    (load-file "~/.emacs.d/config/perso.el"))

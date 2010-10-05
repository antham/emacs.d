(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(setq my-lisp-directory (expand-file-name "~/.emacs.d/"))

(require 'php-completion)
(require 'anything)
(require 'anything-match-plugin)
(require 'auto-complete)
(require 'etags-select)
(require 'dired+)
(require 'yaml-mode)
(require 'yasnippet)

(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . html-mode))

(global-auto-complete-mode t)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

;;  Positionner  la variable  `my-lisp-directory'  sur  une chaine  de
;; caractères contenant le  chemin complet du repertoire contenant les
;; fichiers lisp. 


;;  Ajouter ce  répertoire à  la liste  des répertoires  contenant les
;; bibliothèques :
(add-to-list 'load-path my-lisp-directory)

(set-background-color   "black")
(set-foreground-color   "white")

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))	

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(php-mode-force-pear t)
 '(remote-shell-program "zsh")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-min-dir-content 0))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(diredp-compressed-file-suffix ((t (:background "White" :foreground "Yellow"))))
 '(diredp-date-time ((t (:background "White" :foreground "DarkGoldenrod4"))))
 '(diredp-deletion-file-name ((t (:background "White" :foreground "Red"))))
 '(diredp-display-msg ((t (:background "White" :foreground "Blue"))))
 '(diredp-executable-tag ((t (:background "White" :foreground "Red"))))
 '(diredp-file-name ((t (:background "White" :foreground "Blue"))))
 '(diredp-file-suffix ((t (:background "White" :foreground "DarkMagenta"))))
 '(diredp-inode+size ((t (:background "White" :foreground "DarkBlue"))))
 '(diredp-symlink ((t (:background "White" :foreground "DarkOrange")))))

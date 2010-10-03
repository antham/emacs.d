(add-to-list 'load-path "/home/miramaze/.emacs.d")
(add-to-list 'load-path "/home/miramaze/.emacs.d/company")
(add-to-list 'load-path "/usr/local/share/gtags")
(add-to-list 'load-path "/home/miramaze/.emacs.d/yasnippet")
(setq my-lisp-directory (expand-file-name "~/.emacs.d/"))

(require 'php-completion)
(require 'anything)
(require 'anything-match-plugin)
(require 'auto-complete)
(require 'git-blame)
(require 'git)
(require 'egit)
(require 'etags-select)
(require 'gtags)
(require 'dired+)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

(global-auto-complete-mode t)
(define-key ac-complete-mode-map "\C-c n" 'ac-next)
(define-key ac-complete-mode-map "\C-c p" 'ac-previous)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

;;  Positionner  la variable  `my-lisp-directory'  sur  une chaine  de
;; caractères contenant le  chemin complet du repertoire contenant les
;; fichiers lisp. 


;;  Ajouter ce  répertoire à  la liste  des répertoires  contenant les
;; bibliothèques :
(add-to-list 'load-path my-lisp-directory)
(global-set-key (kbd "<f5>") 'other-window)
(global-set-key (kbd "<f6>") 'enlarge-window)
(global-set-key (kbd "<f7>") 'enlarge-window-horizontally)
(global-set-key (kbd "<f8>") 'delete-window)

(set-background-color   "black")
(set-foreground-color   "white")

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))	

; return a backup file path of a give file path
; with full directory mirroring from a root dir
; non-existant dir will be created
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let (backup-root bpath)
    (setq backup-root "~/.emacs.d/emacs-backup")
    (setq bpath (concat backup-root fpath "~"))
    (make-directory (file-name-directory bpath) bpath)
    bpath
  )
)
(setq make-backup-file-name-function 'my-backup-file-name)


(setq make-backup-files t) 
(setq version-control t)
(setq backup-by-copying t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(kept-new-versions 5)
 '(kept-old-versions 5)
 '(php-mode-force-pear t)
 '(remote-shell-program "zsh")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-min-dir-content 0)
 '(vc-make-backup-files t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

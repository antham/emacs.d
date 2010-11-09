(server-start)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(add-to-list 'load-path "~/.emacs.d/yasnippet")
;; (add-to-list 'load-path "~/.emacs.d/icicles")

(require 'find-recursive)

(require 'autopair)
(autopair-global-mode 1)

(require 'anything)
(require 'anything-match-plugin)

(require 'php-completion)
(require 'auto-complete)
(global-auto-complete-mode t)

(require 'etags-select)
(require 'dired+)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-to-list 'auto-mode-alist '("\\.twig\\'" . html-mode))

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")
(global-set-key (kbd "C-c C-e") 'yas/expand)

(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

(setq backup-inhibited t)

(show-paren-mode 1)
(set-default 'indicate-empty-lines t)
(setq x-select-enable-clipboard t)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'show-wspace)
(global-set-key (kbd "C-c w") 'toggle-show-trailing-whitespace-show-ws)

(require 'browse-kill-ring)
(require 'browse-kill-ring+)

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))

;; (require 'icicles)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)


(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-saved-filter-groups
      '(("Groups"
	 ("Code" (or (mode . python-mode)
		     (mode . js2-mode)
		     (mode . html-mode)
		     (mode . css-mode)
		     (mode . php-mode)
		     (mode . yaml-mode)))
	 )))

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "Groups")))

(setq ibuffer-expert t)

(global-set-key (kbd "C-x b") 'anything)

(display-time-mode t)
(column-number-mode t)
(global-linum-mode)
(ido-mode t)
(toggle-dired-find-file-reuse-dir t)

(global-set-key (kbd "<f1>") 'find-name-dired)
(global-set-key (kbd "<f2>") 'find-grep-dired)
(global-set-key (kbd "<f3>") 'find-dired)
(global-set-key (kbd "<f4>") 'delete-trailing-whitespace)

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
 '(diredp-compressed-file-suffix ((t (:background "Purple" :foreground "Yellow" :weight bold))))
 '(diredp-date-time ((t (:background "White" :foreground "DarkGoldenrod4"))))
 '(diredp-deletion-file-name ((t (:background "White" :foreground "Red"))))
 '(diredp-dir-priv ((t (:background "LightGray" :foreground "DarkRed" :underline "red" :weight extra-bold))))
 '(diredp-display-msg ((t (:background "Orange" :foreground "Blue" :weight bold))))
 '(diredp-executable-tag ((t (:background "White" :foreground "Red" :weight bold))))
 '(diredp-file-name ((t (:background "Grey" :foreground "Blue" :weight bold))))
 '(diredp-file-suffix ((t (:background "Grey" :foreground "Black" :weight bold))))
 '(diredp-inode+size ((t (:background "Grey" :foreground "DarkGreen" :weight bold))))
 '(diredp-symlink ((t (:background "White" :foreground "DarkOrange" :weight bold)))))

(defun coding-hook ()
)

(add-hook 'python-mode-hook 'coding-hook)
(add-hook 'php-mode-hook 'coding-hook)
(add-hook 'yaml-mode-hook 'coding-hook)
(add-hook 'html-mode-hook 'coding-hook)
(add-hook 'css-mode-hook 'coding-hook)
(add-hook 'js2-mode-hook 'coding-hook)


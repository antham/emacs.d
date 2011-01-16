(server-start)
;;## Library path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(add-to-list 'load-path "~/.emacs.d/functions")
(add-to-list 'load-path "~/.emacs.d/macros")
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(add-to-list 'load-path "~/.emacs.d/jabber")
;; (add-to-list 'load-path "~/.emacs.d/icicles")

;;## Coding part

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(require 'git)
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(require 'django-html-mode)
(add-to-list 'auto-mode-alist '("\\.twig\\'" . django-html-mode))

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

(require 'flymake)
(defun flymake-php-init ()
  "Use php to check the syntax of the current file."
  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
	 (local (file-relative-name temp (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local "-l"))))

(add-to-list 'flymake-err-line-patterns
	     '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))

(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))

(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))
(global-set-key (kbd "C-c C-d") 'flymake-goto-prev-error)
(global-set-key (kbd "C-c C-u") 'flymake-goto-next-error)

(defun coding-hook ()
  )

(add-hook 'python-mode-hook 'coding-hook)
(add-hook 'php-mode-hook 'coding-hook)
(add-hook 'yaml-mode-hook 'coding-hook)
(add-hook 'html-mode-hook 'coding-hook)
(add-hook 'css-mode-hook 'coding-hook)
(add-hook 'js2-mode-hook 'coding-hook)

;;## Appearance

(set-background-color   "black")
(set-foreground-color   "white")
(set-cursor-color "yellow")

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


;;## Manage buffers and files

;; (require 'icicles)
(require 'grep-buffers)
(require 'ack)
(require 'find-recursive)
(require 'traverselisp)
(require 'anything)
(require 'anything-config)
(require 'anything-match-plugin)
(require 'anything-traverse)
(require 'etags-select)
(require 'dired+)
(toggle-dired-find-file-reuse-dir t)

(defun base-anything()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-recentf
     anything-c-source-file-name-history
     anything-c-source-files-in-current-dir)
   " *base-anything*"))

(defun file-anything()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-occur
     anything-c-source-browse-code
     anything-c-source-kill-ring)
   " *file-anything*"))

(defun locate-anything()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-locate)
   " *locate-anything*"))

(ido-mode t)

(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

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

;;## Edition functionality

(column-number-mode t)
(global-linum-mode)

(require 'show-wspace)

(require 'browse-kill-ring)
(require 'browse-kill-ring+)

(require 'autopair)
(autopair-global-mode 1)
(show-paren-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(setq-default ac-sources 
	      (list ac-source-filename
		    ac-source-functions
		    ac-source-variables
		    ac-source-symbols
		    ac-source-abbrev
		    ac-source-files-in-current-dir
		    ac-source-filename
		    ac-source-words-in-buffer
		    ac-source-words-in-all-buffer
		    ac-source-dictionary
		    ))

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

(set-default 'indicate-empty-lines t)
(setq x-select-enable-clipboard t)

;; #Remaining features

(defalias 'yes-or-no-p 'y-or-n-p)

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(display-time-mode t)

(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(add-hook 'js2-mode-hook 'js2-custom-setup)
(defun js2-custom-setup ()
  (moz-minor-mode 1))

(require 'symfony2)

(require 'jabber)

(require 'w3m-load)
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "/usr/bin/conkeror")


;;## Keybinding

(global-set-key (kbd "C-x b") 'base-anything)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c a") 'ack)
(global-set-key (kbd "C-c b") 'switch-to-buffer)
(global-set-key (kbd "C-c e") 'yas/expand)
(global-set-key (kbd "C-c f a") 'file-anything)
(global-set-key (kbd "C-c f d") 'find-dired)
(global-set-key (kbd "C-c f g") 'find-grep-dired)
(global-set-key (kbd "C-c f n") 'find-name-dired)
(global-set-key (kbd "C-c g b") 'grep-buffers)
(global-set-key (kbd "C-c g f") 'grep-find)
(global-set-key (kbd "C-c h a") 'etags-select-find-tag-at-point)
(global-set-key (kbd "C-c h f") 'etags-select-find-tag)
(global-set-key (kbd "C-c l") 'locate-anything)
(global-set-key (kbd "C-c s") 'eshell)
(global-set-key (kbd "C-c t") 'term)
(global-set-key (kbd "C-c w d") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c w s") 'toggle-show-trailing-whitespace-show-ws)

(global-set-key (kbd "<f11>") 'toggle-fullscreen)

(add-hook 'w3m-mode-hook
	  '(lambda ()
	     (define-key w3m-mode-map "f" 'w3m-go-to-linknum)
	     (define-key w3m-mode-map "c" 'w3m-submit-form)
	     (define-key w3m-mode-map "C" 'w3m-print-current-url)))


;;## Custom from customize group menu

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-completion-face ((t (:foreground "gray" :underline t))))
 '(diredp-compressed-file-suffix ((t (:background "Purple" :foreground "Yellow" :weight bold))))
 '(diredp-date-time ((t (:background "White" :foreground "DarkGoldenrod4"))))
 '(diredp-deletion-file-name ((t (:background "White" :foreground "Red"))))
 '(diredp-dir-priv ((t (:background "LightGray" :foreground "DarkRed" :underline "red" :weight extra-bold))))
 '(diredp-display-msg ((t (:background "Orange" :foreground "Blue" :weight bold))))
 '(diredp-executable-tag ((t (:background "White" :foreground "Red" :weight bold))))
 '(diredp-file-name ((t (:background "Grey" :foreground "Blue" :weight bold))))
 '(diredp-file-suffix ((t (:background "Grey" :foreground "Black" :weight bold))))
 '(diredp-inode+size ((t (:background "Grey" :foreground "DarkGreen" :weight bold))))
 '(diredp-symlink ((t (:background "White" :foreground "DarkOrange" :weight bold))))
 '(flymake-errline ((((class color) (background dark)) (:background "gray44" :foreground "white"))))
 '(flymake-warnline ((((class color) (background dark)) (:background "gray44" :foreground "white")))))
(put 'upcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anything-c-adaptive-history-length 100)
 '(flymake-log-level 2)
 '(flymake-no-changes-timeout 0.5)
 '(grep-command "grep -n -e ")
 '(grep-find-command "find . -type f -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -print0 | xargs -0 grep -n -e ")
 '(grep-find-ignored-files (quote (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.pfsl" "*.dfsl" "*.p64fsl" "*.d64fsl" "*.dx64fsl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "TAGS" "*#")))
 '(grep-find-template "find . <X> -type f <F> -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -print0 | xargs -0 -e grep <C> -n -e <R>")
 '(grep-highlight-matches (quote always))
 '(grep-scroll-output nil)
 '(history-delete-duplicates nil)
 '(history-length 100)
 '(icomplete-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(js2-mirror-mode nil)
 '(locate-command "locate --regex")
 '(make-backup-files nil)
 '(partial-completion-mode nil)
 '(php-mode-force-pear t)
 '(remote-shell-program "zsh")
 '(savehist-mode t nil (savehist))
 '(term-input-autoexpand (quote history))
 '(terminal-redisplay-interval 1000)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-min-dir-content 0)
 '(w3m-home-page "http://google.fr")
 '(w3m-user-agent "Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1"))

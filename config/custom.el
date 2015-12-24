(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(after-save-hook (quote (helm-backup-versioning)))
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(autopair-global-mode t)
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-firefox-program "firefox")
 '(browse-url-generic-program "/usr/bin/conkeror")
 '(column-number-mode t)
 '(cscope-do-not-update-database t)
 '(display-time-mode t)
 '(emacs-lisp-mode-hook (quote (turn-on-eldoc-mode checkdoc-minor-mode enable-paredit-mode)))
 '(eshell-buffer-maximum-lines 10000)
 '(global-linum-mode t)
 '(global-undo-tree-mode t)
 '(global-whitespace-newline-mode nil)
 '(globalff-regexp-search t)
 '(grep-command "grep --color --exclude=\"TAGS\" --exclude=\"\\.gitmodules\" --exclude=\"cscope.files\" --exclude=\"cscope.out\" --exclude=\"GPATH\" --exclude=\"GRTAGS\" --exclude=\"GTAGS\" --exclude-dir=\"*git*\" -nsH2re ")
 '(grep-find-command "find . -type f -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -a -not -name '*.log' -a -not -name \"cscope.files\" -a -not -name \"cscope.out\" -a -not -name \"GPATH\" -a -not -name \"GRTAGS\" -a -not -name \"GTAGS\" -print0 | xargs -0 grep -n -e ")
 '(grep-find-ignored-files (quote (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.pfsl" "*.dfsl" "*.p64fsl" "*.d64fsl" "*.dx64fsl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "TAGS" "*#")))
 '(grep-find-template "find . <X> -type f <F> -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -a -not -name '*.log' -a -not -name \"cscope.files\" -a -not -name \"cscope.out\" -a -not -name \"GPATH\" -a -not -name \"GRTAGS\" -a -not -name \"GTAGS\" -print0 | xargs -0 -e grep <C> -n -e <R>")
 '(grep-highlight-matches (quote always))
 '(grep-scroll-output nil)
 '(gtags-path-style (quote absolute))
 '(gtags-suggested-key-mapping nil)
 '(helm-backup-path "~/.helm-backup")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-moccur-always-search-in-current t)
 '(helm-mode t)
 '(helm-swoop-pre-input-function (lambda nil ""))
 '(helm-swoop-speed-or-color t)
 '(history-delete-duplicates nil)
 '(history-length 100)
 '(ibuffer-expert t)
 '(icomplete-mode t)
 '(ido-vertical-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(initial-scratch-message "")
 '(js-flat-functions nil)
 '(js2-basic-offset 4)
 '(js2-include-node-externs t)
 '(js2-mirror-mode nil)
 '(lisp-mode-hook (quote (enable-paredit-mode)))
 '(locate-command "locate --regex")
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-enable-at-startup nil)
 '(partial-completion-mode nil)
 '(password-cache-expiry nil)
 '(php-mode-force-pear t)
 '(projectile-global-mode t)
 '(projectile-keymap-prefix "p")
 '(projectile-switch-project-action (quote projectile-dired))
 '(recentf-mode t)
 '(remote-shell-program "zsh")
 '(save-place t nil (saveplace))
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(shell-mode-hook (quote (ansi-color-for-comint-mode-on)))
 '(shell-pop-shell-type (quote ("terminal" "*shell*" (lambda nil (shell)))))
 '(shell-pop-term-shell "/bin/zsh")
 '(show-paren-mode t)
 '(term-input-autoexpand (quote history))
 '(terminal-redisplay-interval 1000)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-min-dir-content 0)
 '(use-file-dialog nil)
 '(w3m-default-display-inline-images t)
 '(w3m-home-page "http://google.fr")
 '(w3m-lnum-quick-browsing (quote quick-all))
 '(w3m-new-session-url "http://google.fr")
 '(w3m-use-cookies t)
 '(w3m-use-title-buffer-name t)
 '(w3m-user-agent "Mozilla/5.0 (compatible; Windows; U; Windows NT 6.2; WOW64; en-US; rv:12.0) Gecko/20120403211507 Firefox/12.0")
 '(xclip-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-branch ((t (:inherit nil :background "orange" :weight bold))))
 '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))))
 '(magit-diff-del ((((class color) (background dark)) (:foreground "red"))))
 '(magit-diff-file-header ((t (:inherit magit-header :foreground "green"))))
 '(magit-diff-hunk-header ((t (:inherit magit-header :foreground "RoyalBlue4" :slant italic))))
 '(magit-diff-none ((t (:foreground "white"))))
 '(magit-header ((t (:foreground "yellow"))))
 '(magit-item-highlight ((((class color) (background dark)) (:background "gray23"))))
 '(magit-log-message ((t (:foreground "white" :weight bold))))
 '(magit-section-title ((t (:inherit nil :foreground "orange" :weight bold))))
 '(cursor ((t (:background "yellow")))))

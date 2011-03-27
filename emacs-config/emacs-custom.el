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
 '(anything-command-map-prefix-key "M-<down>")
 '(flymake-log-level 2)
 '(flymake-no-changes-timeout 0.5)
 '(globalff-regexp-search t)
 '(grep-command "grep --color --exclude=\"TAGS\" --exclude=\"\\.gitmodules\" --exclude-dir=\"*git*\" -nsH2re ")
 '(grep-find-command "find . -type f -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -a -not -name '*.log' -print0 | xargs -0 grep -n -e ")
 '(grep-find-ignored-files (quote (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.pfsl" "*.dfsl" "*.p64fsl" "*.d64fsl" "*.dx64fsl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "TAGS" "*#")))
 '(grep-find-template "find . <X> -type f <F> -not -path '*.git*' -a -not -name TAGS -a -not -name '*#' -a -not -name '*.log' -print0 | xargs -0 -e grep <C> -n -e <R>")
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

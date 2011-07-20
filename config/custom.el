(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(anything-c-adaptive-history-length 100)
 '(anything-command-map-prefix-key "M-<down>")
 '(company-auto-complete nil)
 '(company-auto-complete-chars (quote (32 40 41 46 34 36 39 60 124 33)))
 '(company-backends (quote ((company-gtags company-dabbrev-code company-keywords company-abbrev company-tempo))))
 '(company-idle-delay t)
 '(company-require-match nil)
 '(company-show-numbers t)
 '(cscope-do-not-update-database t)
 '(flymake-gui-warnings-enabled nil)
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
 '(ido-enable-flex-matching t)
 '(ido-enable-regexp t)
 '(ido-everywhere t)
 '(indent-tabs-mode nil)
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
 '(use-file-dialog nil)
 '(viper-insert-state-cursor-color "Yellow")
 '(w3m-home-page "http://google.fr")
 '(w3m-user-agent "Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ac-completion-face ((t (:background "black" :foreground "red" :underline t))))
 '(ac-dabbrev-menu-face ((t (:background "lightgray" :foreground "purple"))))
 '(ac-dabbrev-selection-face ((t (:background "purple" :foreground "white"))))
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
 '(flymake-errline ((((class color) (background dark)) (:overline "red" :underline "red" :weight semi-bold))))
 '(flymake-warnline ((((class color) (background dark)) (:overline "blue" :underline "blue" :weight semi-bold))))
 '(magit-branch ((t (:inherit nil :background "orange" :weight bold))))
 '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))))
 '(magit-diff-del ((((class color) (background dark)) (:foreground "red"))))
 '(magit-diff-file-header ((t (:inherit magit-header :foreground "green"))))
 '(magit-diff-hunk-header ((t (:inherit magit-header :foreground "RoyalBlue4" :slant italic))))
 '(magit-diff-none ((t (:foreground "white"))))
 '(magit-header ((t (:foreground "yellow"))))
 '(magit-log-message ((t (:foreground "white" :weight bold))))
 '(magit-section-title ((t (:inherit nil :foreground "orange" :weight bold)))))

(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key "\C-c\C-m" 'helm-M-x)

(global-set-key (kbd "M-.") 'helm-gtags-find-tag-from-here)
(global-set-key (kbd "C-;") 'file-helm)
(global-set-key (kbd "C-,") 'helm-swoop)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c a")   'helm-ack)
(global-set-key (kbd "C-c b")   'eval-buffer)
(global-set-key (kbd "C-c c")   'magit-status)
(global-set-key (kbd "C-c d")   'find-name-dired)
(global-set-key (kbd "C-c e")   'eshell)
(global-set-key (kbd "C-c f")   'helm-find)
(global-set-key (kbd "C-c g")   'grep)
(global-set-key (kbd "C-c j")   'helm-backup)
(global-set-key (kbd "C-c k c") 'copy-full-path-to-kill-ring)
(global-set-key (kbd "C-c k s") 'show-file-name)
(global-set-key (kbd "C-c m b") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c m e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c m p") 'mc/mark-pop)
(global-set-key (kbd "C-c m r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c m w") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-c n")   'async-shell-command)
(global-set-key (kbd "C-c p s a") 'helm-projectile-ack)
(global-set-key (kbd "C-c p s g") 'helm-projectile-grep)
(global-set-key (kbd "C-c r")   'shell-command-on-region)
(global-set-key (kbd "C-c s g") 'helm-cscope-find-global-definition)
(global-set-key (kbd "C-c s s") 'helm-cscope-find-this-symbol)
(global-set-key (kbd "C-c s t") 'helm-cscope-find-this-text-string)
(global-set-key (kbd "C-c s f") 'helm-cscope-find-calling-this-function)
(global-set-key (kbd "C-c s c") 'helm-cscope-find-called-functions)
(global-set-key (kbd "C-c s i") 'helm-cscope-find-files-including-file)
(global-set-key (kbd "C-c s p") 'helm-cscope-pop-mark)
(global-set-key (kbd "C-c t a") 'eyuml-create-activity-diagram)
(global-set-key (kbd "C-c t c") 'eyuml-create-class-diagram)
(global-set-key (kbd "C-c t u") 'eyuml-create-usecase-diagram)
(global-set-key (kbd "C-c y")   'helm-show-kill-ring)
(global-set-key (kbd "C-c u")   'browse-url-generic)
(global-set-key (kbd "C-c v")   'codesearch-search)
(global-set-key (kbd "C-c w")   'wdired-change-to-wdired-mode)
(global-set-key (kbd "C-c z" )  'zap-up-to-char)
(global-set-key (kbd "C-c ,")   'helm-multi-swoop-all)
(global-set-key (kbd "C-c :")   'helm-gtags-find-tag)
(global-set-key (kbd "C-c *")   'helm-gtags-pop-stack)

(global-set-key (kbd "C-c C-p") 'pop-global-mark)

(global-set-key (kbd "C-$") 'dabbrev-expand)

(key-chord-define-global "xx" 'er/expand-region)

(global-set-key (kbd "C-)") 'shell-pop)

(global-set-key (kbd "C-%") 'split-window-horizontally)
(global-set-key (kbd "C-:") 'split-window-vertically)
(global-set-key (kbd "C-!") 'delete-window)
(global-set-key (kbd "C-*") 'delete-other-windows)
(global-set-key (kbd "C-^") 'enlarge-window)
(global-set-key (kbd "C-=") 'enlarge-window-horizontally)

(global-set-key (kbd "C-(") ctl-x-r-map)

(define-key global-map (kbd "C-<up>"   ) 'windmove-up)
(define-key global-map (kbd "C-<down>" ) 'windmove-down)
(define-key global-map (kbd "C-<right>") 'windmove-right)
(define-key global-map (kbd "C-<left>" ) 'windmove-left)

(define-key global-map (kbd "M-z" ) 'zap-up-to-char)

(define-key global-map (kbd "s-SPC") 'term-toggle-mode)

(add-hook 'w3m-mode-hook
          '(lambda ()
             (define-key w3m-mode-map "c" 'w3m-submit-form)
             (define-key w3m-mode-map "f" 'w3m-lnum-follow)
             (define-key w3m-mode-map "n" 'w3m-next-buffer)
             (define-key w3m-mode-map "o" 'w3m-view-this-url-new-session)
             (define-key w3m-mode-map "O" 'w3m-view-this-url-new-session-in-background)
             (define-key w3m-mode-map "p" 'w3m-previous-buffer)
             (define-key w3m-mode-map "q" 'w3m-delete-buffer)
             (define-key w3m-mode-map "C" 'w3m-print-current-url)
             ))

(add-hook 'eshell-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-<up>") 'windmove-up)
             (local-set-key (kbd "C-<down>") 'windmove-down)
             ))

(add-hook 'comint-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-<up>") 'windmove-up)
             (local-set-key (kbd "C-<down>") 'windmove-down)
             ))

;;Terminal mapping
(global-set-key (kbd "M-[ &") 'quoted-insert)
(global-set-key (kbd "M-[ ;") 'file-helm)
(global-set-key (kbd "M-[ ,") 'helm-swoop)

(global-set-key (kbd "M-[ $") 'dabbrev-expand)

(global-set-key (kbd "M-[ %") 'split-window-horizontally)
(global-set-key (kbd "M-[ |") 'split-window-vertically)
(global-set-key (kbd "M-[ !") 'delete-window)
(global-set-key (kbd "M-[ *") 'delete-other-windows)
(global-set-key (kbd "M-[ ^") 'enlarge-window)
(global-set-key (kbd "M-[ =") 'enlarge-window-horizontally)

(global-set-key (kbd "M-[ (") ctl-x-r-map)

(define-key global-map (kbd "M-O A") 'windmove-up)
(define-key global-map (kbd "M-O B") 'windmove-down)
(define-key global-map (kbd "M-O C") 'windmove-right)
(define-key global-map (kbd "M-O D") 'windmove-left)

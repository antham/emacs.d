(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key (kbd "M-.") 'helm-gtags-select)
(global-set-key (kbd "C-;") 'file-helm)
(global-set-key (kbd "C-,") 'buffer-helm)
(global-set-key (kbd "C-x C-f") 'find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c a a") 'helm-ack)
(global-set-key (kbd "C-c a c") 'ack)
(global-set-key (kbd "C-c b")   'eval-buffer)
(global-set-key (kbd "C-c c")   'magit-status)
(global-set-key (kbd "C-c f c") 'copy-full-path-to-kill-ring)
(global-set-key (kbd "C-c f d") 'find-dired)
(global-set-key (kbd "C-c f g") 'find-grep-dired)
(global-set-key (kbd "C-c f n") 'find-name-dired)
(global-set-key (kbd "C-c f s") 'show-file-name)
(global-set-key (kbd "C-c g f") 'grep-find)
(global-set-key (kbd "C-c g g") 'grep)
(global-set-key (kbd "C-c i c") 'emamux:close-panes)
(global-set-key (kbd "C-c i l") 'emamux:run-last-command)
(global-set-key (kbd "C-c i r") 'emamux:run-command)
(global-set-key (kbd "C-c j")   'helm-backup)
(global-set-key (kbd "C-c n")   'async-shell-command)
(global-set-key (kbd "C-c s g") 'ascope-find-global-definition)
(global-set-key (kbd "C-c s s") 'ascope-find-this-symbol)
(global-set-key (kbd "C-c s t") 'ascope-find-this-text-string)
(global-set-key (kbd "C-c s f") 'ascope-find-functions-calling-this-function)
(global-set-key (kbd "C-c s c") 'ascope-find-called-functions)
(global-set-key (kbd "C-c s i") 'ascope-find-files-including-file)
(global-set-key (kbd "C-c s a") 'ascope-all-symbol-assignments)
(global-set-key (kbd "C-c s o") 'ascope-clear-overlay-arrow)
(global-set-key (kbd "C-c s p") 'ascope-pop-mark)
(global-set-key (kbd "C-c t")   'term)
(global-set-key (kbd "C-c w d") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c u") 'browse-url-generic)

(global-set-key (kbd "C-c ,") 'shell-command-on-region)

(global-set-key (kbd "C-$") 'dabbrev-expand)

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

(define-key ac-complete-mode-map (kbd "M-x") 'execute-extended-command)
(define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
(define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)
(define-key ac-complete-mode-map (kbd "C-g") 'ac-stop)
(define-key ac-complete-mode-map (kbd "<return>") 'ac-complete)

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
(global-set-key (kbd "M-[ ,") 'buffer-helm)

(global-set-key (kbd "M-[ $") 'dabbrev-expand)

(global-set-key (kbd "M-[ %") 'split-window-horizontally)
(global-set-key (kbd "M-[ :") 'split-window-vertically)
(global-set-key (kbd "M-[ !") 'delete-window)
(global-set-key (kbd "M-[ *") 'delete-other-windows)
(global-set-key (kbd "M-[ ^") 'enlarge-window)
(global-set-key (kbd "M-[ =") 'enlarge-window-horizontally)

(global-set-key (kbd "M-[ (") ctl-x-r-map)

(define-key global-map (kbd "M-O A") 'windmove-up)
(define-key global-map (kbd "M-O B") 'windmove-down)
(define-key global-map (kbd "M-O C") 'windmove-right)
(define-key global-map (kbd "M-O D") 'windmove-left)

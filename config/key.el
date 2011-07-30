(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key (kbd "C-;") 'base-anything)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "s-a") 'ack)
(global-set-key (kbd "s-b") 'anything-ack)
(global-set-key (kbd "s-c") 'anything-c-moccur-dmoccur)
(global-set-key (kbd "s-d") 'switch-to-buffer)
(global-set-key (kbd "s-e") 'magit-status)
(global-set-key (kbd "s-f") 'yas/expand)
(global-set-key (kbd "s-g") 'find-dired)
(global-set-key (kbd "s-h") 'find-grep-dired)
(global-set-key (kbd "s-i") 'find-name-dired)
(global-set-key (kbd "s-j") 'grep-buffers)
(global-set-key (kbd "s-k") 'grep-find)
(global-set-key (kbd "s-l") 'grep)
(global-set-key (kbd "s-m") 'etags-select-find-tag-at-point)
(global-set-key (kbd "s-n") 'etags-select-find-tag)
(global-set-key (kbd "s-o") 'wl)
(global-set-key (kbd "s-p") 'google-previous)
(global-set-key (kbd "s-q") 'google-next)
(global-set-key (kbd "s-r") 'toggle-show-trailing-whitespace-show-ws)
(global-set-key (kbd "s-t") 'delete-trailing-whitespace)
(global-set-key (kbd "s-s") 'term)

(global-set-key (kbd "s-,") 'globalff)

(global-set-key (kbd "C-, c") 'project-compile)
(global-set-key (kbd "C-, l") 'project-load)
(global-set-key (kbd "C-, a") 'project-ack)
(global-set-key (kbd "C-, b") 'project-find-anything)
(global-set-key (kbd "C-, g") 'project-grep)
(global-set-key (kbd "C-, o") 'project-multi-occur)
(global-set-key (kbd "C-, u") 'project-unload)
(global-set-key (kbd "C-, f") 'project-find-file-ido)
(global-set-key (kbd "C-, i") 'project-index)
(global-set-key (kbd "C-, s") 'project-status)
(global-set-key (kbd "C-, h") 'project-home)
(global-set-key (kbd "C-, d") 'project-dired)
(global-set-key (kbd "C-, t") 'project-tags)

(global-set-key (kbd "C-$") 'dabbrev-expand)

(global-set-key (kbd "C-)") 'shell-pop)

(global-set-key (kbd "C-%") 'split-window-horizontally)
(global-set-key (kbd "C-:") 'split-window-vertically)
(global-set-key (kbd "C-!") 'delete-window)
(global-set-key (kbd "C-*") 'delete-other-windows)
(global-set-key (kbd "C-^") 'enlarge-window)
(global-set-key (kbd "C-=") 'enlarge-window-horizontally)

(define-key global-map (kbd "C-<up>"   ) 'windmove-up)
(define-key global-map (kbd "C-<down>" ) 'windmove-down)
(define-key global-map (kbd "C-<right>") 'windmove-right)
(define-key global-map (kbd "C-<left>" ) 'windmove-left)

(global-set-key (kbd "M-C-y") 'kill-ring-search)

(define-key global-map (kbd "M-z" ) 'zap-up-to-char)

(global-set-key (kbd "<f11>") 'toggle-fullscreen)

(global-set-key (kbd "C-c C-j") 'term-line-mode)

(define-key ac-complete-mode-map (kbd "M-x") 'execute-extended-command)
(define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
(define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)
(define-key ac-complete-mode-map (kbd "C-g") 'ac-stop)
(define-key ac-complete-mode-map (kbd "<return>") 'ac-complete)

(add-hook 'w3m-mode-hook
          '(lambda ()
             (define-key w3m-mode-map "f" 'w3m-go-to-linknum)
             (define-key w3m-mode-map "c" 'w3m-submit-form)
             (define-key w3m-mode-map "C" 'w3m-print-current-url)))

(add-hook 'dired-mode-hook
          '(lambda ()
             (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))

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

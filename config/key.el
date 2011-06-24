(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key (kbd "C-x b") 'base-anything)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c a a") 'anything-ack)
(global-set-key (kbd "C-c a c") 'ack)
(global-set-key (kbd "C-c b") 'switch-to-buffer)
(global-set-key (kbd "C-c e") 'yas/expand)
(global-set-key (kbd "C-c f d") 'find-dired)
(global-set-key (kbd "C-c f g") 'find-grep-dired)
(global-set-key (kbd "C-c f n") 'find-name-dired)
(global-set-key (kbd "C-c g b") 'grep-buffers)
(global-set-key (kbd "C-c g f") 'grep-find)
(global-set-key (kbd "C-c g g") 'grep)
(global-set-key (kbd "C-c h a") 'etags-select-find-tag-at-point)
(global-set-key (kbd "C-c h f") 'etags-select-find-tag)
(global-set-key (kbd "C-c m d") 'anything-c-moccur-dmoccur)
(global-set-key (kbd "C-c o p") 'google-previous)
(global-set-key (kbd "C-c o n") 'google-next)
(global-set-key (kbd "C-c t") 'term)
(global-set-key (kbd "C-c s") 'eshell)
(global-set-key (kbd "C-c w d") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c w s") 'toggle-show-trailing-whitespace-show-ws)

(global-set-key (kbd "C-c ,") 'globalff)

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

(global-set-key (kbd "C-%") 'split-window-horizontally)
(global-set-key (kbd "C-:") 'split-window-vertically)
(global-set-key (kbd "C-!") 'delete-window)
(global-set-key (kbd "C-*") 'delete-other-windows)

(define-key global-map (kbd "C-<up>"   ) 'windmove-up)
(define-key global-map (kbd "C-<down>" ) 'windmove-down)
(define-key global-map (kbd "C-<right>") 'windmove-right)
(define-key global-map (kbd "C-<left>" ) 'windmove-left)

(global-set-key (kbd "<f11>") 'toggle-fullscreen)

(add-hook 'w3m-mode-hook
	  '(lambda ()
	     (define-key w3m-mode-map "f" 'w3m-go-to-linknum)
	     (define-key w3m-mode-map "c" 'w3m-submit-form)
	     (define-key w3m-mode-map "C" 'w3m-print-current-url)))

(add-hook 'dired-mode-hook
          '(lambda ()
             (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))

(global-set-key (kbd "C-c C-j") 'term-line-mode)
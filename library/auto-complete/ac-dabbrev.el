;; Source http://curiousprogrammer.wordpress.com/2009/04/07/autocomplete-and-dabbrev/

(require 'cl)
(require 'dabbrev)
(require 'auto-complete)

(defun ac-source-dabbrev (abbrev)
  (interactive)
  (dabbrev--reset-global-variables)
  (let ((dabbrev-check-all-buffers t))
    (sort (dabbrev--find-all-expansions abbrev t) #'string<)))

(defvar ac-source-dabbrev-words
  '((candidates
     . (lambda () (all-completions ac-target
                                   (ac-source-dabbrev ac-target))))
  (candidate-face . ac-dabbrev-menu-face)
  (selection-face . ac-dabbrev-selection-face))
  "Get all the completions using dabbrev")

(defface ac-dabbrev-menu-face
  '((t (:background "lightgray" :foreground "brown")))
  "Face for dabbrev candidate menu."
  :group 'auto-complete)

(defface ac-dabbrev-selection-face
  '((t (:background "brown" :foreground "lightgray")))
  "Face for the dabbrev selected candidate."
  :group 'auto-complete)

(provide 'ac-dabbrev)
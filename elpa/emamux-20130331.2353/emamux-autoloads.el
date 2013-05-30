;;; emamux-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (emamux:clear-runner-history emamux:interrupt-runner
;;;;;;  emamux:inspect-runner emamux:close-panes emamux:close-runner-pane
;;;;;;  emamux:run-last-command emamux:run-command emamux:copy-kill-ring
;;;;;;  emamux:send-command) "emamux" "emamux.el" (20902 36359 506769
;;;;;;  237000))
;;; Generated autoloads from emamux.el

(autoload 'emamux:send-command "emamux" "\
Send command to target-session of tmux

\(fn)" t nil)

(autoload 'emamux:copy-kill-ring "emamux" "\
Set (car kill-ring) to tmux buffer

\(fn ARG)" t nil)

(autoload 'emamux:run-command "emamux" "\
Run command

\(fn CMD &optional CMDDIR)" t nil)

(autoload 'emamux:run-last-command "emamux" "\


\(fn)" t nil)

(autoload 'emamux:close-runner-pane "emamux" "\
Close runner pane

\(fn)" t nil)

(autoload 'emamux:close-panes "emamux" "\
Close all panes except current pane

\(fn)" t nil)

(autoload 'emamux:inspect-runner "emamux" "\
Enter copy-mode in runner pane

\(fn)" t nil)

(autoload 'emamux:interrupt-runner "emamux" "\
Send SIGINT to runner pane

\(fn)" t nil)

(autoload 'emamux:clear-runner-history "emamux" "\
Clear history of runner pane

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("emamux-pkg.el") (20902 36359 615922 407000))

;;;***

(provide 'emamux-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; emamux-autoloads.el ends here

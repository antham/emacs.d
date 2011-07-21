;; Create a elisp file, for instance example.el,
;; in .emacs.d/projects folder with project config as follow
;;
;; (project-def "example"
;;           '((basedir          "/home/path/example")
;;             (src-patterns     ("*.c"))
;;             (ignore-patterns  ("*.o"))
;;             (tags-file        "/home/path/example/TAGS")
;;             (file-list-cache  "/tmp/files")
;;             (open-files-cache "/tmp/open-files")
;;             (vcs              git)
;;             (compile-cmd      "gcc")
;;             (ack-args         "--cc")
;;             (startup-hook     nil)
;;             (shutdown-hook    nil)
;;             ))
;;
;; And add it to your project config by appending following line below to this file
;; (load-file "~/.emacs.d/projects/example.el")



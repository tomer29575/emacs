;;-----------------------------------------------------------
;; start  tl-uvm.el
;;------------------------------------------------------------


(current-time)


(setq env_name "bbu")
(setq author_name "Tomer Levin")
(defun uvm-file-header()
  (interactive)
  (progn
    (setq buffer_name_upcase (upcase (car (split-string (buffer-name) "\\."))))
    (insert "\n")
    (insert "//---------------------------------------------------------\n")
    (insert "//--- File Name  " (buffer-name) "\n")
    (insert "//--- Path:      " (buffer-file-name) "\n")
    (insert "//--- Date:      " (format-time-string "%b %Y" (current-time)) "\n" )
    (insert "//--- Author:    " author_name "\n")
    (insert "//---------------------------------------------------------" "\n")
    (insert (concat "`ifndef "  buffer_name_upcase "__SV\n"))
    (insert (concat "`define "  buffer_name_upcase "__SV\n"))
    (insert (concat "`endif //" buffer_name_upcase "__SV\n"))
    ))




























;;-----------------------------------------------------------
;; end tl-uvm.el
;;------------------------------------------------------------

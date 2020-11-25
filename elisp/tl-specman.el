(defun tl-specman-statement()
  (interactive)
  (beginning-of-line)  
  (setq specman-statement-kind (current-word t t))
  (forward-word)
  (forward-word)
  (backward-word)
  (setq specman-statement-name (current-word t t))
  (end-of-line)  
  (if (equal  specman-statement-kind "struct") 
      (progn
	(insert "\n")
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// start of struct " (format "%s" specman-statement-name) ))
	(insert "\n//------------------------------------------------")
	
	(insert (concat "\nstruct " (format "%s" specman-statement-name) " is {"))

	(insert "\n")
	(insert (concat "\n////// start of local variables struct " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of local variables  struct " (format "%s" specman-statement-name) ))
	
	(insert "\n")
	(insert (concat "\n////// start of debug constrains struct " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of debug constrains struct " (format "%s" specman-statement-name) ))
	
	
	(insert "\n")
	(insert (concat "\n////// start of constrains struct " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of constrains struct " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of function struct " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of function struct " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of tcm struct " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of tcm struct" (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert "\n")
	(insert (concat "\n}; // struct " (format "%s" specman-statement-name) " is ... "))
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// end of struct " (format "%s" specman-statement-name)  ))
	(insert "\n//------------------------------------------------")
      );progn
    );if (equal  specman-statement-kind "struct") 

  (if (equal  specman-statement-kind "unit") 
      (progn
	(insert "\n")
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// start of unit " (format "%s" specman-statement-name) ))
	(insert "\n//------------------------------------------------")
	
	(insert (concat "\nunit " (format "%s" specman-statement-name) " is {"))

	(insert "\n")
	(insert (concat "\n////// start of local variables unit " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of local variables  unit " (format "%s" specman-statement-name) ))
	
	(insert "\n")
	(insert (concat "\n////// start of debug constrains unit " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of debug constrains unit " (format "%s" specman-statement-name) ))
	
	
	(insert "\n")
	(insert (concat "\n////// start of constrains unit " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of constrains unit " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of function unit " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of function unit " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of tcm unit " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of tcm unit" (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert "\n")
	(insert (concat "\n}; // unit " (format "%s" specman-statement-name) " is ... "))
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// end of unit " (format "%s" specman-statement-name)  ))
	(insert "\n//------------------------------------------------")
      );progn
    );if (equal  specman-statement-kind "unit") 

  (if (equal  specman-statement-kind "extend") 
      (progn
	(insert "\n")
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// start of extend " (format "%s" specman-statement-name) ))
	(insert "\n//------------------------------------------------")
	
	(insert (concat "\nextend " (format "%s" specman-statement-name) " is {"))

	(insert "\n")
	(insert (concat "\n////// start of local variables extend " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of local variables  extend " (format "%s" specman-statement-name) ))
	
	(insert "\n")
	(insert (concat "\n////// start of debug constrains extend " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of debug constrains extend " (format "%s" specman-statement-name) ))
	
	
	(insert "\n")
	(insert (concat "\n////// start of constrains extend " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of constrains extend " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of function extend " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of function extend " (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert (concat "\n////// start of tcm extend " (format "%s" specman-statement-name) ))
	(insert (concat "\n////// end of tcm extend" (format "%s" specman-statement-name) ))

	(insert "\n")
	(insert "\n")
	(insert (concat "\n}; // extend " (format "%s" specman-statement-name) " is ... "))
	(insert "\n//------------------------------------------------")
	(insert (concat "\n// end of extend " (format "%s" specman-statement-name)  ))
	(insert "\n//------------------------------------------------")
      );progn
    );if (equal  specman-statement-kind "extend") 


  ) ;defun tl-specman-statemeanta()


(global-set-key [(control ?7)] 'tl-specman-statement)

(provide 'tl-specman)









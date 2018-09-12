(require 'deft)

(setq deft-extensions '("txt" "tex" "org"))
(setq deft-directory "~/Dropbox/Notes/Deft/")
(global-set-key [f8] 'deft)
(setq deft-recursive t)

(provide 'init-deft)

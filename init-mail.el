(require 'mu4e)

(setq mu4e-contexts
 `( ,(make-mu4e-context
      :name "Gmail"
      :match-func (lambda (msg) (when msg
                                 (string-prefix-p "/Gmail" (mu4e-message-field msg :maildir))))
      :vars '(
              (mu4e-trash-folder . "/Gmail/[Gmail].Trash")
              (mu4e-refile-folder . "/Gmail/[Gmail].Archive")))
       
   ,(make-mu4e-context
     :name "Teradata"
     :match-func (lambda (msg) (when msg
                                (string-prefix-p "/Teradata" (mu4e-message-field msg :maildir))))
     :vars '(
             (mu4e-trash-folder . "/Teradata/Deleted Items")
             (mu4e-refile-folder . Teradata-mu4e-refile-folder)))))


(defun exchange-mu4e-refile-folder (msg)
  "Function for chosing the refile folder for my Exchange email.
   MSG is a message p-list from mu4e."
  (cond
   ;; FLA messages
   ((string-match "\\[some-mailing-list\\]"
          (mu4e-message-field msg :subject))
    "/Teradata/mailing-list")
   (t "/Teradata/Archive")))
   
(provide 'init-mail)

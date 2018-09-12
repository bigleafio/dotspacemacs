  (require 'exwm)
  (require 'exwm-config)
  (setq exwm-input--line-mode-passthrough t)

  ;; Pull up the buffer list
  (spacemacs/set-leader-keys "b l" 'list-buffers)

  ;; Set the initial workspace number.
  (setq exwm-workspace-number 2)
  ;; Make class name the buffer name
  (add-hook 'exwm-update-class-hook
            (lambda ()
              (setq exwm-input--line-mode-passthrough t)
              (exwm-workspace-rename-buffer exwm-class-name)
              ))

  ;; 's-w': Switch workspace
  ; (exwm-input-set-key (kbd "s-w") #'exwm-workspace-switch)
  (exwm-input-set-key (kbd "s-w") #'spacemacs/workspaces-transient-state/body)
  ;; s-h, s-j, s-k, s-l: move around
  (exwm-input-set-key (kbd "s-h") #'evil-window-left)
  (exwm-input-set-key (kbd "s-j") #'evil-window-down)
  (exwm-input-set-key (kbd "s-k") #'evil-window-up)
  (exwm-input-set-key (kbd "s-l") #'evil-window-right)
  ;; lock screen
  (exwm-input-set-key (kbd "C-M-l") #'lock-screen)
  (define-key global-map (kbd "C-M-l") #'lock-screen)
  (push ?\s-\  exwm-input-prefix-keys)

  ;; fn key bindings
  (exwm-input-set-key (kbd "<XF86AudioRaiseVolume>") #'turn-volume-up)
  (exwm-input-set-key (kbd "<XF86AudioLowerVolume>") #'turn-volume-down)
  (exwm-input-set-key (kbd "<XF86AudioMute>") #'toggle-volume-mute)
  (exwm-input-set-key (kbd "<XF86AudioPlay>") #'spotify-playpause)
  (exwm-input-set-key (kbd "<XF86AudioNext>") #'spotify-next)
  (exwm-input-set-key (kbd "<XF86AudioPrev>") #'spotify-previous)
  (exwm-input-set-key (kbd "<XF86KbdBrightnessUp>") #'kbd-brightness-up)
  (exwm-input-set-key (kbd "<XF86KbdBrightnessDown>") #'kbd-brightness-down)
  (exwm-input-set-key (kbd "<XF86LaunchA>") #'lock-screen)
  (exwm-input-set-key (kbd "<XF86LaunchB>") #'spacemacs/toggle-maximize-buffer)

  ;; 's-&': Launch application
  (exwm-input-set-key (kbd "s-&")
                     (lambda (command)
                      (interactive (list (read-shell-command "$ ")))
                     (start-process-shell-command command nil command)))

  ;; Enable EXWM
  (exwm-enable)
  ;; Configure Ido
  (exwm-config-ido)
  ;; Other configurations
  (exwm-config-misc)

  ;; s-h, s-j, s-k, s-l: move around
  ;; also defined below in exwm (defined both places for terminal mode compat)
  (define-key evil-motion-state-map (kbd "s-h") #'evil-window-left)
  (define-key evil-motion-state-map (kbd "s-j") #'evil-window-down)
  (define-key evil-motion-state-map (kbd "s-k") #'evil-window-up)
  (define-key evil-motion-state-map (kbd "s-l") #'evil-window-right)

  (require 'term)
  (define-key term-raw-map (kbd "s-c") (lambda () (interactive) (term-send-raw-string "\C-c")))
  (define-key term-raw-map (kbd "s-d") (lambda () (interactive) (term-send-raw-string "\C-d")))
  (define-key term-raw-map (kbd "s-r") (lambda () (interactive) (term-send-raw-string "\C-r")))


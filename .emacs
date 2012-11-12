
(if (or (eq window-system 'x) (eq window-system 'ns))
    (tool-bar-mode -1))

(if (or (eq window-system 'x) (eq window-system 'ns))
    (scroll-bar-mode -1))

(if (or (eq window-system 'x) (eq window-system 'ns))
    (menu-bar-mode -1))

(isearch-mode 1)
(iswitchb-mode 1)

(global-set-key '[f5] 'call-last-kbd-macro)
;; csharp stuff

(setq load-path
      (append '("~/.elisp"
		"~/.elisp/ensime/elisp"
		"/usr/share/emacs/23.2/lisp/progmodes"
		)  load-path ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; org-mode stuff
;; (require 'org-install)
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (define-key global-map "\C-cl" 'org-store-link)
;; (define-key global-map "\C-ca" 'org-agenda)
;; (setq org-log-done t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; screen geometry
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

(if (eq window-system 'x)
    (toggle-fullscreen))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'scala2)
(require 'scala-mode)

;; Load the ensime lisp code...
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;(add-hook 'scala2-hook 'ensime-scala-mode-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ttl mode
;;
(autoload 'ttl-mode "ttl-mode" "Major mode for OWL or Turtle files" t)
(add-hook 'ttl-mode-hook    ; Turn on font lock when in ttl mode
          'turn-on-font-lock)
(setq auto-mode-alist
      (append
       (list
        '("\\.n3" . ttl-mode)
        '("\\.ttl" . ttl-mode))
       auto-mode-alist))

;; ;;
;; ;; n3 mode
;; ;;

;; ;(add-to-list 'load-path "/n3-mode.el")
;; (autoload 'n3-mode "n3-mode" "Major mode for OWL or N3 files" t)

;; ;; Turn on font lock when in n3 mode
;; (add-hook 'n3-mode-hook
;;           'turn-on-font-lock)

;; (setq auto-mode-alist
;;       (append
;;        (list
;;         '("\\.n3" . n3-mode)
;;         '("\\.owl" . n3-mode))
;;        auto-mode-alist))


;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
; '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Courier New")))))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

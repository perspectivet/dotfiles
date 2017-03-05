
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")

(cask-initialize)
(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "ebd976c3d91de7c6858db3ba07c52238d545a106c8fbf05192913f6d42421621" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default)))
 '(quack-programs
   (quote
    ("csi -:c" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; (if (or (eq window-system 'x) (eq window-system 'ns))
;;     (tool-bar-mode -1))

;; (if (or (eq window-system 'x) (eq window-system 'ns))
;;     (scroll-bar-mode -1))

;; (if (or (eq window-system 'x) (eq window-system 'ns))
;;     (menu-bar-mode -1))

(isearch-mode 1)

(global-set-key '[f5] 'call-last-kbd-macro)
;; csharp stuff


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
;(require 'scala-mode)

;; Load the ensime lisp code...
;(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
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

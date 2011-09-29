
(tool-bar-mode -1)
(scroll-bar-mode -1)


(isearch-mode 1)
(menu-bar-mode -1)
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
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

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
(require 'scala-mode-auto)

;; Load the ensime lisp code...
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'cc-mode)
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)

(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(require 'powershell)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;; C# code completion (requires CEDET semantic)

    (setq load-path
          (append '("~/.elisp/cedet-1.0/semantic"
                    "~/.elisp/cedet-1.0/semantic/bovine"
                    "~/.elisp/cedet-1.0/common"
                    "~/.elisp/cedet-1.0/eieio"
                    "~/.elisp/cedet-1.0/contrib"
                    )  load-path ))

    (load "semantic")
    (load "semantic-load")
    (load "wisent-csharp")

    (require 'csharp-completion)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; (defun my-csharp-mode-fn ()
  ;;    "function that runs when csharp-mode is initialized for a buffer."
  ;;    ...insert your code here...
  ;;    ...most commonly, your custom key bindings ...
  ;; )
  ;; (add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;;; nodra-theme.el --- No Drama dark theme for Emacs

;; Code
(deftheme nodra "The Nodra color theme")

;; Colors - assume 256-color palette
(let
    ((nodra-black "#000000") 
     (nodra-grey0 "#000009")
     (nodra-grey2 "#0a3749")
     (nodra-cy0   "#245361")
     (nodra-cy2   "#99d1ce")
     (nodra-white "#ffffff")
     (nodra-deff  "#205070")
     
     (nodra-red   "#aa0000")
     (nodra-hu    "#a05050")
     (nodra-yell  "#d7d787")
     (nodra-blu0  "#5588dd")
     (nodra-blu3  "#19547a")
     (nodra-blu4  "#0072ff")
     (nodra-cyan  "#00ffff")
     (nodra-viola "#250323")
     (nodra-green "#00ff00")
     (nodra-pink0 "#ff1493")
     (nodra-pink1 "#f78bc5"))
  
(custom-theme-set-faces
 'nodra
 `(default     ((t (:background ,nodra-black
				:foreground ,nodra-deff))))
 `(button      ((t (:foreground ,nodra-cy0
				:box t))))
 `(shadow      ((t (:foreground ,nodra-cy0))))
 `(highlight   ((t (:background ,nodra-grey2
				:foreground ,nodra-white))))
 `(link        ((t (:foreground ,nodra-yell
				:underline t))))
 `(cursor      ((t (:background ,nodra-red))))
 `(region      ((t (:background ,nodra-yell
				:foreground unspecified))))
 `(linum       ((t (:background ,nodra-grey0
				:foreground ,nodra-cy0))))
 `(line-number              ((t (:background ,nodra-grey0
					     :foreground ,nodra-cy0))))
 `(line-number-current-line ((t (:inherit highlight))))
 `(fringe                   ((t (:background ,nodra-grey0
					     :foreground ,nodra-cy2))))
 `(vertical-border          ((t (:foreground ,nodra-cy0))))
 `(trailing-whitespace      ((t (:background ,nodra-red))))
 `(scroll-bar               ((t (:foreground ,nodra-grey2))))

 ;; font-lock
 `(escape-glyph                     ((t (:foreground ,nodra-hu
						     :weight bold))))
 `(font-lock-comment-face           ((t (:background ,nodra-viola
						     :foreground ,nodra-white))))
 `(font-lock-comment-delimiter-face ((t (:background ,nodra-viola
						     :foreground ,nodra-white))))
 `(font-lock-builtin-face       ((t (:foreground ,nodra-blu3))))
 `(font-lock-keyword-face       ((t (:foreground ,nodra-blu3))))
 `(font-lock-constant-face      ((t (:foreground ,nodra-blu3))))
 `(font-lock-variable-name-face ((t (:foreground ,nodra-deff))))
 `(font-lock-function-name-face ((t (:foreground ,nodra-deff))))
 `(font-lock-doc-face     ((t (:foreground ,nodra-hu))))
 `(font-lock-string-face  ((t (:foreground ,nodra-hu))))
 `(font-lock-type-face    ((t (:foreground ,nodra-blu3))))
 `(font-lock-warning-face ((t (:foreground ,nodra-red))))
 `(error   ((t (:foreground ,nodra-red))))
 `(success ((t (:foreground ,nodra-green))))
 `(warning ((t (:foreground ,nodra-pink1))))

 ;; search - highlight
 `(match ((t (:background ,nodra-cy0))))
 `(isearch ((t (:inverse-video t))))
 `(isearch-fail ((t (:foreground ,nodra-white
				 :background ,nodra-red))))
 `(lazy-highlight ((t (:background ,nodra-cyan
				   :foreground ,nodra-red
				   :weight bold))))

 ;; mode - header lines
 `(minibuffer-prompt   ((t (:background nil
					:foreground ,nodra-blu4
					:weight bold))))
 `(header-line         ((t (:background ,nodra-grey2
					:foreground ,nodra-cyan))))
 `(menu                ((t (:background ,nodra-grey2
					:foreground ,nodra-cy2)))) 
 `(mode-line           ((t (:background nil
					:foreground ,nodra-blu4
					:box (:line-width -1 :color ,nodra-blu4)))))
 `(mode-line-inactive  ((t (:background nil
					:foreground ,nodra-cy0
					:box nil))))
 `(mode-line-highlight ((t (:foreground ,nodra-cy2))))
 `(mode-line-buffer-id ((t (:foreground ,nodra-pink0       
					:weight bold))))

 ;; completions
 `(completions-common-part      ((t (:foreground ,nodra-white))))
 `(completions-first-difference ((t (:foreground ,nodra-green
						 :weight bold))))

 ;; customize
 `(custom-button       ((t (:foreground ,nodra-cy0 :box t))))
 `(custom-button-mouse ((t (:foreground ,nodra-cy0 :box t))))
 `(custom-group-tag    ((t (:inherit fixed-pitch :foreground ,nodra-blu0))))
 `(custom-state        ((t (:foreground ,nodra-cy2))))

 ;; compilation
 `(compilation-mode-line-fail ((t (:foreground unspecified :inherit compilation-error))))
 `(compilation-mode-line-exit ((t (:foreground unspecified :inherit compilation-info))))

 ;; ido
 `(ido-first-match ((t (:foreground ,nodra-white :weight bold))))
 `(ido-indicator   ((t (:foreground ,nodra-red))))
 `(ido-only-match  ((t (:foreground ,nodra-green))))
 `(ido-subdir      ((t (:foreground ,nodra-red :weight bold))))

 ;; which-key
 `(which-key-key-face                 ((t (:foreground ,nodra-cyan))))
 `(which-key-command-description-face ((t (:foreground ,nodra-cyan))))
 `(which-key-separator-face           ((t (:background nil
						       :foreground ,nodra-pink1))))
 
 ;; dired
 `(dired-directory ((t (:foreground ,nodra-pink0 :weight bold))))
 `(dired-symlink   ((t (:foreground ,nodra-yell :weight normal :slant italic))))

 ;; slime
 `(slime-error-face         ((t (:underline (:style wave :color ,nodra-red)))))
 `(slime-warning-face       ((t (:underline (:style wave :color ,nodra-pink1))))) 
 `(slime-note-face          ((t (:underline (:style wave :color ,nodra-yell)))))
 `(slime-style-warning-face ((t (:underline (:style wave :color ,nodra-green)))))

 `(slime-reader-conditional-face ((t (:background nil
						  :foreground ,nodra-white))))
 
 `(slime-repl-prompt-face ((t (:foreground ,nodra-white :weight bold))))
 
 `(slime-repl-input-face          ((t (:foreground ,nodra-deff))))
 `(slime-repl-output-face         ((t (:inherit font-lock-string-face))))
 `(slime-repl-inputed-output-face ((t (:foreground ,nodra-green :weight bold))))
 `(slime-repl-result-face         ((t (:foreground ,nodra-deff))))
 
 `(slime-inspector-action-face  ((t (:foreground ,nodra-blu4))))
 `(slime-inspector-label-face   ((t (:foreground ,nodra-blu4))))
 `(slime-inspector-topline-face ((t (:foreground ,nodra-blu4))))
 `(slime-inspector-type-face    ((t (:foreground ,nodra-blu4))))
 `(slime-inspector-value-face   ((t (:foreground ,nodra-blu4))))
 
 `(sldb-restartable-frame-line-face ((t (:foreground ,nodra-green))))
 `(sldb-topline-face        ((t (:foreground ,nodra-cyan))))
 `(sldb-condition-face      ((t (:inherit font-lock-warning-face))))
 `(sldb-section-face        ((t (:inherit header-line))))
 `(sldb-restart-face        ((t (:foreground ,nodra-deff))))
 `(sldb-restart-type-face   ((t (:foreground ,nodra-blu0))))
 `(sldb-restart-number-face ((t (:foreground ,nodra-blu0 :weight bold))))
 ))

;;;###autoload
(when load-file-name
(add-to-list 'custom-theme-load-path
	     (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nodra)

;; Local Variables:
;; no-byte-compile: t
;; End:


;;; nodra-theme.el ends here

;; nodra-theme.el --- No Drama dark theme for Emacs

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
     (nodra-comm  "#ff5555")
     (nodra-inac  "#0f0f0f")
     (nodra-delim "#ff3030")
     (nodra-paren "#4f94cd") ; SteelBlue3
     (nodra-deff  "#8be9fd") ; or #205070 or #90b3ff or #4f94cd

     (nodra-red   "#aa0000")
     (nodra-kerr  "#b50a5a")
     (nodra-vired "#ff1493")
     (nodra-pink1 "#f78bc5")
     (nodra-hu    "#a05050")
     (nodra-choco "#ff7f24")
     (nodra-yell  "#d7d787")
     (nodra-gold  "#ffd700")
     (nodra-blu0  "#5588dd")
     (nodra-blu2  "#222277")
     (nodra-blu4  "#0072ff")
     (nodra-cyan  "#00e5ee")
     (nodra-viola "#8b008b")
     (nodra-drac  "#50fa7b")
     (nodra-green "#00ff00"))

(custom-theme-set-faces
 'nodra
 `(default      ((t (:background ,nodra-black
				:foreground ,nodra-deff))))
 `(button       ((t (:foreground ,nodra-choco
				:underline (:size -1)))))
 `(widget-field ((t (:background ,nodra-comm
				 :foreground ,nodra-pink1))))
 `(shadow      ((t (:foreground ,nodra-kerr
				:weight bold))))
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
 `(vertical-border          ((t (:foreground ,nodra-grey0))))
 `(trailing-whitespace      ((t (:background ,nodra-red))))
 `(scroll-bar               ((t (:foreground ,nodra-grey2))))

 ;; font-lock
 `(escape-glyph                     ((t (:foreground ,nodra-hu
						     :weight bold))))
 `(font-lock-comment-face           ((t (:background ,nodra-black
						     :foreground ,nodra-comm
                                                     :weight normal))))
 `(font-lock-comment-delimiter-face ((t (:background ,nodra-black
						     :foreground ,nodra-comm
                                                     :weight bold))))
 `(font-lock-builtin-face       ((t (:foreground ,nodra-deff))))
 `(font-lock-keyword-face       ((t (:foreground ,nodra-deff))))
 `(font-lock-constant-face      ((t (:foreground ,nodra-deff))))
 `(font-lock-variable-name-face ((t (:foreground ,nodra-deff))))
 `(font-lock-function-name-face ((t (:foreground ,nodra-deff))))
 `(font-lock-doc-face     ((t (:foreground ,nodra-viola))))
 `(font-lock-string-face  ((t (:foreground ,nodra-drac))))
 `(font-lock-type-face    ((t (:foreground ,nodra-deff))))
 `(font-lock-warning-face ((t (:foreground ,nodra-red))))
 `(error   ((t (:foreground ,nodra-red))))
 `(success ((t (:foreground ,nodra-green))))
 `(warning ((t (:foreground ,nodra-pink1))))

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
 `(mode-line-inactive  ((t (:background ,nodra-inac
       					:foreground ,nodra-inac
					:box nil))))
 `(mode-line-highlight ((t (:foreground ,nodra-green))))
 `(mode-line-buffer-id ((t (:foreground ,nodra-vired :weight normal))))
 `(mode-line-emphasis  ((t (:foreground ,nodra-green))))

 ;; parens
 `(show-paren-match            ((t (:background ,nodra-paren))))
 `(show-paren-match-expression ((t (:inherit show-paren-match))))

 ;; search - highlight
 `(match          ((t (:background ,nodra-blu0
				   :foreground ,nodra-red))))
 `(isearch        ((t (:inverse-video t))))
 `(isearch-fail   ((t (:foreground ,nodra-white
				 :background ,nodra-red))))
 `(lazy-highlight ((t (:background ,nodra-cyan
				   :foreground ,nodra-vired
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
 `(dired-directory ((t (:foreground ,nodra-cyan :weight bold))))
 `(dired-symlink   ((t (:foreground ,nodra-yell :weight normal :slant italic))))
 `(dired-header    ((t (:foreground ,nodra-cyan :weight bold))))

 ;; neotree
 `(neo-root-dir-face   ((t (:foreground ,nodra-hu))))
 `(neo-header-face     ((t (:foreground ,nodra-blu2 :weight bold))))
 `(neo-file-link-face  ((t (:foreground ,nodra-cy2))))
 `(neo-expand-btn-face ((t (:foreground ,nodra-blu2 :weight bold))))
 `(neo-dir-link-face   ((t (:foreground ,nodra-blu2))))

 ;; hl-line
 `(hl-line ((t (:inverse-video t))))

 ;; org
 `(org-level-1 ((t (:foreground ,nodra-gold))))
 `(org-level-2 ((t (:foreground ,nodra-gold))))
 `(org-level-3 ((t (:foreground ,nodra-gold))))
 `(org-level-4 ((t (:foreground ,nodra-gold))))
 `(org-level-5 ((t (:foreground ,nodra-gold))))
 `(org-level-6 ((t (:foreground ,nodra-gold))))
 `(org-level-7 ((t (:foreground ,nodra-gold))))
 `(org-level-8 ((t (:foreground ,nodra-gold))))
 `(org-block   ((t (:foreground ,nodra-cy2))))
 `(org-table   ((t (:foreground ,nodra-cy2))))

 ;; slime
 `(slime-error-face         ((t (:underline (:style wave :color ,nodra-red)))))
 `(slime-warning-face       ((t (:underline (:style wave :color ,nodra-pink1)))))
 `(slime-note-face          ((t (:underline (:style wave :color ,nodra-yell)))))
 `(slime-style-warning-face ((t (:underline (:style wave :color ,nodra-green)))))

 `(slime-reader-conditional-face ((t (:inherit font-lock-builtin-face))))

 `(slime-repl-prompt-face ((t (:foreground ,nodra-white))))

 `(slime-repl-input-face          ((t (:foreground ,nodra-deff :weight bold))))
 `(slime-repl-output-face         ((t (:foreground ,nodra-hu))))
 `(slime-repl-inputed-output-face ((t (:foreground ,nodra-green))))
 `(slime-repl-result-face         ((t (:foreground ,nodra-red))))

 `(slime-inspector-action-face  ((t (:foreground ,nodra-choco))))
 `(slime-inspector-label-face   ((t (:foreground ,nodra-choco))))
 `(slime-inspector-topline-face ((t (:foreground ,nodra-choco))))
 `(slime-inspector-type-face    ((t (:foreground ,nodra-choco))))
 `(slime-inspector-value-face   ((t (:foreground ,nodra-choco))))

 `(sldb-restartable-frame-line-face ((t (:foreground ,nodra-green))))
 `(sldb-topline-face                ((t (:foreground ,nodra-cyan))))
 `(sldb-condition-face              ((t (:inherit font-lock-warning-face))))
 `(sldb-section-face                ((t (:inherit header-line))))
 `(sldb-restart-face        ((t (:foreground ,nodra-deff))))
 `(sldb-restart-type-face   ((t (:foreground ,nodra-cyan :weight bold))))
 `(sldb-restart-number-face ((t (:foreground ,nodra-cyan :weight bold))))
 `(sldb-frame-label-face    ((t (:foreground ,nodra-cyan))))

 ;; rainbow-delimiters
 `(rainbow-delimiters-base-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-1-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,nodra-delim :weight bold))))
 `(rainbow-delimiters-base-error-face ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))
 `(rainbow-delimiters-mismatched-face ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))
 `(rainbow-delimiters-unmatched-face  ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))


 ;; sly
 ;; `(sly-mrepl-prompt-face ((t (:foreground ,nodra-grey2))))
 ;; `(sly-mrepl-output-face ((t (:foreground ,nodra-hu))))
 ;; `(sly-mrepl-note-face   ((t (:foreground ,nodra-cy0))))
 ;; `(sly-part-button-face  ((t (:foreground ,nodra-white))))

 ;; `(sly-reader-conditional-face ((t (:inherit font-lock-builtin-face))))

 ;; `(sly-error-face         ((t (:underline (:style wave :color ,nodra-red)))))
 ;; `(sly-warning-face       ((t (:underline (:style wave :color ,nodra-pink1)))))
 ;; `(sly-note-face          ((t (:underline (:style wave :color ,nodra-yell)))))
 ;; `(sly-style-warning-face ((t (:underline (:style wave :color ,nodra-green)))))

 ;; `(sly-action-face                    ((t (:foreground ,nodra-hu
 ;;        					       :weight bold))))
 ;; `(sly-db-restart-number-face         ((t (:inherit sly-action-face))))
 ;; `(sly-db-frame-label-face            ((t (:inherit sly-action-face))))
 ;; `(sly-db-topline-face                ((t (:foreground ,nodra-cyan))))
 ;; `(sly-db-restartable-frame-line-face ((t (:foreground ,nodra-green))))
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

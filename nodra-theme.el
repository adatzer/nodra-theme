;; nodra-theme.el --- No Drama dark theme for Emacs

;; Code
(deftheme nodra "The Nodra color theme")

;; Colors - assume 256-color palette
(let
    ((nodra-black "#13171f")
     (nodra-color "#c2c7d0")
     (nodra-pico  "#01aaff")
     (nodra-pico-grey "#373c44")
     (nodra-pico-green "#62af9a")
     (nodra-pico-h1    "#f0f1f3")
     (nodra-pico-db  "#0172ad")
     (nodra-pico-hover-bg "#5d6b89")
     (nodra-pico-yellow "#f6c61b")
     (nodra-pico-purple "#bf7fdb")
     (nodra-pico-dark-grey "#202632")

     (nodra-grey0 "#333333")
     (nodra-grey2 "#0a3749")
     (nodra-cy0   "#245361")
     (nodra-cy2   "#99d1ce")
     (nodra-white "#ffffff")

     (nodra-comm  "#ff5555")
     (nodra-inac  "#0f0f0f")
     (nodra-delim "#ff3030")

     (nodra-deff  "#ffffff")

     (nodra-red   "#ce7e7b")
     (nodra-kerr  "#b50a5a")
     (nodra-vired "#ff1493")
     (nodra-pink1 "#f78bc5")
     (nodra-hu    "#a05050")
     (nodra-choco "#ff7f24")
     (nodra-yell  "#d7d787")
     (nodra-gold  "#ffc706")
     (nodra-blu0  "#5588dd")
     (nodra-blu2  "#0000ff")
     (nodra-blu4  "#0072ff")
     (nodra-cyan  "#00ffff")
     (nodra-viola "#8b008b")
     (nodra-drac  "#39b54a")
     (nodra-green "#00ff00")
     (nodra-magen "#762671"))

(custom-theme-set-faces
 'nodra
 `(default      ((t (:background ,nodra-black
				:foreground ,nodra-color :weight bold))))
 `(button       ((t (:foreground ,nodra-choco
				:underline (:size -1)))))
 `(widget-field ((t (:background ,nodra-comm
				 :foreground ,nodra-pink1))))
 `(shadow      ((t (:foreground ,nodra-kerr
				:weight bold))))
 `(highlight   ((t (:background ,nodra-pico-db
				:foreground ,nodra-white))))
 `(link        ((t (:foreground ,nodra-yell
				:underline t))))
 `(cursor      ((t (:background ,nodra-pico-yellow))))
 `(region      ((t (:inverse-video t))))
 `(linum       ((t (:background ,nodra-pico-dark-grey
				:foreground ,nodra-cy0))))
 `(line-number              ((t (:background ,nodra-pico-dark-grey
					     :foreground ,nodra-pico-hover-bg))))
 `(line-number-current-line ((t (:inherit highlight))))
 `(fringe                   ((t (:background ,nodra-black
					     :foreground ,nodra-pico-db))))
 `(vertical-border          ((t (:foreground ,nodra-grey0))))
 `(trailing-whitespace      ((t (:background ,nodra-red))))
 `(scroll-bar               ((t (:foreground ,nodra-grey2))))

 `(escape-glyph                     ((t (:foreground ,nodra-pico
						     :weight bold))))
 `(font-lock-comment-face           ((t (:background ,nodra-black
						     :foreground ,nodra-pico-db
                                                     :weight normal))))
 `(font-lock-comment-delimiter-face ((t (:background ,nodra-black
						     :foreground ,nodra-pico
                                                     :weight bold))))
 `(font-lock-builtin-face       ((t (:foreground ,nodra-color))))
 `(font-lock-keyword-face       ((t (:foreground ,nodra-color))))
 `(font-lock-constant-face      ((t (:foreground ,nodra-color))))
 `(font-lock-variable-name-face ((t (:foreground ,nodra-color))))
 `(font-lock-function-name-face ((t (:foreground ,nodra-color))))
 `(font-lock-doc-face     ((t (:foreground ,nodra-pico-db))))
 `(font-lock-string-face  ((t (:foreground ,nodra-pico-green))))
 `(font-lock-type-face    ((t (:foreground ,nodra-color))))
 `(font-lock-warning-face ((t (:foreground ,nodra-red))))
 `(error   ((t (:foreground ,nodra-red))))
 `(success ((t (:foreground ,nodra-green))))
 `(warning ((t (:foreground ,nodra-pink1))))

 `(js2-function-param ((t (:foreground ,nodra-color))))
 `(js2-external-variable ((t (:foreground ,nodra-color))))

 `(minibuffer-prompt   ((t (:background nil
					:foreground ,nodra-pico
					:weight bold))))
 `(header-line         ((t (:background ,nodra-grey2
					:foreground ,nodra-cyan))))
 `(menu                ((t (:background ,nodra-grey2
					:foreground ,nodra-cy2))))
 `(mode-line           ((t (:background ,nodra-pico-grey
					:foreground ,nodra-color
					:box (:line-width 1 :color ,nodra-pico-db)))))
 `(mode-line-inactive  ((t (:background ,nodra-pico-grey
       					:foreground ,nodra-pico-hover-bg
					:box (:line-width -1 :color ,nodra-black)))))
 `(mode-line-highlight ((t (:foreground ,nodra-green))))
 `(mode-line-buffer-id ((t (:foreground ,nodra-pico-purple :weight normal))))
 `(mode-line-emphasis  ((t (:foreground ,nodra-green))))

 `(show-paren-match            ((t (:inverse-video t))))
 `(show-paren-match-expression ((t (:inherit show-paren-match))))

 `(match          ((t (:background ,nodra-blu0
				   :foreground ,nodra-red))))
 `(isearch        ((t (:inverse-video t))))
 `(isearch-fail   ((t (:foreground ,nodra-white
				 :background ,nodra-red))))
 `(lazy-highlight ((t (:background ,nodra-cyan
				   :foreground ,nodra-vired
				   :weight bold))))

 `(completions-common-part      ((t (:foreground ,nodra-white))))
 `(completions-first-difference ((t (:foreground ,nodra-green
						 :weight bold))))

 `(custom-button       ((t (:foreground ,nodra-cy0 :box t))))
 `(custom-button-mouse ((t (:foreground ,nodra-cy0 :box t))))
 `(custom-group-tag    ((t (:inherit fixed-pitch :foreground ,nodra-blu0))))
 `(custom-state        ((t (:foreground ,nodra-cy2))))

 `(compilation-mode-line-fail ((t (:foreground unspecified :inherit compilation-error))))
 `(compilation-mode-line-exit ((t (:foreground unspecified :inherit compilation-info))))

 `(ido-first-match ((t (:foreground ,nodra-green :weight bold))))
 `(ido-indicator   ((t (:foreground ,nodra-red))))
 `(ido-only-match  ((t (:foreground ,nodra-green))))
 `(ido-subdir      ((t (:foreground ,nodra-blu2 :weight bold))))

 `(which-key-key-face                 ((t (:foreground ,nodra-cyan))))
 `(which-key-command-description-face ((t (:foreground ,nodra-cyan))))
 `(which-key-separator-face           ((t (:background nil
						       :foreground ,nodra-pink1))))

 `(dired-directory ((t (:foreground ,nodra-cyan :weight bold))))
 `(dired-symlink   ((t (:foreground ,nodra-yell :weight normal :slant italic))))
 `(dired-header    ((t (:foreground ,nodra-cyan :weight bold))))

 `(neo-root-dir-face   ((t (:foreground ,nodra-hu))))
 `(neo-header-face     ((t (:foreground ,nodra-blu2 :weight bold))))
 `(neo-file-link-face  ((t (:foreground ,nodra-deff))))
 `(neo-expand-btn-face ((t (:foreground ,nodra-blu0 :weight bold))))
 `(neo-dir-link-face   ((t (:foreground ,nodra-blu0 :weight bold))))

 `(hl-line ((t (:inverse-video t))))

 `(rainbow-delimiters-base-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-1-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,nodra-pico :weight bold))))
 `(rainbow-delimiters-base-error-face ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))
 `(rainbow-delimiters-mismatched-face ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))
 `(rainbow-delimiters-unmatched-face  ((t (:foreground ,nodra-deff
                                                       :background ,nodra-pink1))))


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

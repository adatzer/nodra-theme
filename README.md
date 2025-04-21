# Nodra theme for emacs

## Intro

Nodra is a dark theme for Emacs, with not so much drama: it features almost no syntax highlighting.

To install:

1. If you use [straight.el](https://github.com/raxod502/straight.el) (as i do), add this to your init.el file:

   ```
   (straight-use-package
    `(nodra-theme :type git :host github :repo "adatzer/nodra-theme"))
   ```

2. Manually:
  - git clone this repository
  - add the path to the *directory* containing nodra-theme.el to your emacs init

    ```
    (add-to-list 'custom-theme-load-path "~/path/to/your/nodra-theme-directory/")
    ```

To load:

`M-x load-theme RET nodra RET`

To load this theme always on startup, add to your init.el file:

```
(load-theme 'nodra t)
```

## Notes

1. Needs > Emacs 24.
2. Assumes 256-color palette.
3. If you modify the theme, remember first to

   `M-x disable-theme RET nodra RET`

   and then load it again, for your changes to take effect.

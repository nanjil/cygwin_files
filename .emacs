; matlab mode

(autoload 'matlab-mode "/usr/local/emacs/matlab.el" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "/usr/local/emacs/matlab.el" "Interactive Matlab mode." t)

(setq frame-title-format "%f - Emacs")
(setq icon-title-format  "%f - Emacs")

					; line number mode
;(add-hook 'prog-mode-hook 'linum-mode)

;(set-default-font  "-adobe-courier-bold-r-*-*-14-*-*-*-*-*-*-*")

(setq message-log-max nil)
(kill-buffer "*Messages*")
(global-set-key "\C-x\C-g" 'goto-line)

(setq display-time-24hr-format t)
;;(load-file "~/print-NT.elc")
(setq lpr-command "lpr")
(setq printer-name "//SA_P233MMX/OJ1170C")
;;(setq lpr-destination '("-S \\SA_P233MMX -P OJ1170C"))

(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [\C-home] 'beginning-of-buffer)
(global-set-key [\C-end] 'end-of-buffer)

(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
(setq auto-mode-alist
(append (list '("\\.cc$"    . c++-mode)
              '("\\.hh$"    . c++-mode)
              '("\\.hpp$"   . c++-mode)
              '("\\.c$"     . c-mode)
              '("\\.h$"     . c++-mode)
              '("\\.dml$"   . lisp-mode)
              '("\\.el$"    . lisp-mode)
              '("\\.html$"  . html-helper-mode)
              '("\\.htm$"   . html-helper-mode))
          auto-mode-alist))

(setq win32-pass-alt-to-system t)
(setq default-frame-alist
      (append default-frame-alist
              '((top . 10)
                (left . 35)
                (width . 120)
                (height . 55)
		(pointer-color . "green")
		(cursor-color . "green")
                (background-color . "black")
                (foreground-color . "yellow"))
              ))

(setq win32-pass-alt-to-system t)
(global-set-key [f5] 'replace-string)
(global-set-key [f6] 'goto-line)
(autoload 'follow-mode "follow"
    "Synchronize windows showing the same buffer, minor mode." t)

; add to info directory list
;(setq Info-additional-directory-list ( "c:/fsf/info"))
(setq Info-directory-list (list "c:/cygwin/usr/info"))
;; Turn on font-lock in all modes that support it
  (if (fboundp 'global-font-lock-mode)
       (global-font-lock-mode t))

  ;; Maximum colors
  (setq font-lock-maximum-decoration t) 
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)
;; font-lock, face-lock, and fast-lock setup
(defun turn-on-font-lock ()
  (font-lock-mode 1))
       (require 'font-lock)
       (make-face           'my-comment-face)
       (set-face-foreground 'my-comment-face    "Salmon")
       (make-face           'my-doc-string-face)
       (set-face-foreground 'my-doc-string-face "Turquoise")
       (make-face           'my-string-face)
       (set-face-foreground 'my-string-face     "Turquoise1")
       (make-face           'my-keyword-face)
       (set-face-foreground 'my-keyword-face    "Magenta")
       (make-face           'my-function-face)
       (set-face-foreground 'my-function-face   "Red")
       (make-face           'my-type-face)
       (set-face-foreground 'my-type-face       "Firebrick")
       (make-face           'my-other-type-face)
       (set-face-foreground 'my-other-type-face "SpringGreen1")
       (setq font-lock-function-name-face 'my-function-face
           font-lock-comment-face       'my-comment-face
           font-lock-string-face        'my-string-face
           font-lock-keyword-face       'my-blue-face
           font-lock-doc-string-face    'my-doc-string-face
           font-lock-type-face          'my-type-face
           font-lock-other-type-face    'my-other-type-face)
       ;; Turn on font-lock in all modes that support it
       (if (fboundp 'global-font-lock-mode)
           (global-font-lock-mode t))
       (add-hook 'c++-mode-hook         'turn-on-font-lock)
       (add-hook 'c-mode-hook           'turn-on-font-lock)
       (add-hook 'html-helper-mode-hook 'turn-on-font-lock)
       (add-hook 'lisp-mode-hook        'turn-on-font-lock)
       (add-hook 'perl-mode-hook        'turn-on-font-lock)
       (add-hook 'pls-mode-hook         'turn-on-font-lock)
       (add-hook 'plsql-mode-hook       'turn-on-font-lock)
       (add-hook 'sql-mode-hook         'turn-on-font-lock)
       (add-hook 'sqlforms-mode-hook    'turn-on-font-lock)
       (add-hook 'tex-mode-hook         'turn-on-font-lock)
       (add-hook 'texinfo-mode-hook     'turn-on-font-lock) 




















(put 'downcase-region 'disabled nil)
(custom-set-variables
 '(load-home-init-file t t))
(custom-set-faces)

(setq minibuffer-max-depth nil)

; ctags
;(setq path-to-ctags "/usr/bin/ctags") ;; <- your ctags path here

(setq path-to-ctags "/projects/code")
;(setq tags-table-list '("/projects/code/tags"))

(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "ctags -f %s -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )


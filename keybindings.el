(defun pk/hello-world ()
 (interactive)
 (message "hello world!"))

(defun pk/not-so-fast ()
 (interactive)
 (message "not so fast!"))


(global-set-key (kbd "C-1") (make-sparse-keymap)) ; you can't bind a multi-part/chord key sequence unless there exists a keymap at each element in the sequence
(global-set-key (kbd "C-1 h") 'pk/hello-world)
(global-unset-key (kbd "C-1"))

; key map preference, from the Emacs manual....
; Usually, the active keymaps are:
;   (i) the keymap specified by the keymap property,
;   (ii) the keymaps of enabled minor modes,
;   (iii) the current buffer’s local keymap, and
;   (iv) the global keymap, in that order.
; Emacs searches for each input key sequence in all these keymaps.
;
; (iii) the local keymap is usually set by the major mode, and is shared by all buffers in the same major mode
; (iv) the global keymap exists in variable global-map
; ---------------------------

(pp-to-string (current-active-maps))

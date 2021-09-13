; Autohotkey script
; Evan Parker, 2021-09-09
; evanjparker@outlook.com
; http://www.asciiforge.com/macwinkeys
; Feel free to reuse, edit and redistribute
; Key remaps for Apple users forced to use Windows

; Essentially all that this script does is reads various win/alt + {key} combos
; and runs them as ctrl + {key}, except for a few instances

; The standard ctrl + {key} shortcuts should still work normally

; For editing reference, '#' represents the Windows key and '!' represents the Alt key.


; critically important! this stops the windows key from opening the start menu when another
; shortcut is ran, which happens sometimes for reasons i do not understand
~LWin Up:: return
~RWin Up:: return


;
; editor
;

; select all (ctrl + a)
#a::Send {LCtrl down}{a}{LCtrl up}

; backspace whole line (shift + home + delete)
#BS::Send {LShift down}{Home}{LShift Up}{Del}

; delete next word (shift + ctrl + right)
!Delete::Send {LShift down}{LCtrl down}{Right}{LShift Up}{Lctrl up}{Del}

; delete previous word
!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; save, save as, open, new
#s::Send {LCtrl down}{s}{LCtrl up} ; ctrl + s (save)
#+s::Send {LCtrl down}{Shift down}{s}{LCtrl up}{Shift up} ; ctrl + shift + s (save as)
#o::Send {LCtrl down}{o}{LCtrl up} ; ctrl + o (open)
#n::Send {LCtrl down}{n}{LCtrl up} ; ctrl + n (new)

; next/previous word
!Left::Send {LCtrl down}{Left}{LCtrl up}
!Right::Send {LCtrl down}{Right}{LCtrl up}

; beginning/end of line
; remapped below as home/end w/ arrow keys

; undo/redo
#z::Send {LCtrl down}{z}{LCtrl up}
#y::Send {LCtrl down}{y}{LCtrl up}


;
; navigation
;

; minimize current window (win + down, works okay-ish)
#m::Send {LWin down}{Down}{LWin up}

; close current window (alt + f4)
#q::Send {LAlt down}{F4}{LAlt up}

; cmd + tab (app switcher) - currently disabled, doesn't work as i had hoped :(
; #Tab::send {LAlt down}{Tab}{LAlt up}

; cmd + r (reload)
#r::Send {LCtrl down}{r}{LCtrl up}

; cmd + c/v (copy/paste)
#c::Send {LCtrl down}{c}{LCtrl up}
#v::Send {LCtrl down}{v}{LCtrl up}

; home + end w/ arrow keys
#Up::Send {Lctrl down}{Home}{Lctrl up} ; home (top)
#Down::Send {Lctrl down}{End}{Lctrl up} ; end (bottom)

; find on page (cmd + f)
#f::Send {LCtrl down}{f}{LCtrl up}


;
; browser
;

; open new tab
#t::Send {LCtrl down}{t}{LCtrl up}

; close current tab
#w::Send {LCtrl down}{w}{LCtrl up}

; reopen previously closed tab
#+t::Send {LCtrl down}{Shift down}{t}{Shift up}{LCtrl up}

; open link in new tab
#LButton::Send {LCtrl down}{LButton}{LCtrl up}


;
; other
;

; windows search (spotlight search substitute)
#Space::Send {LWin down}{s}{LWin up}

; app expose
F3::Send {LWin down}{Tab}{LWin up}

; OPTIONAL: lock screen with win + l (uncomment to disable)
; #l::Send {LCtrl down}{l}{LCtrl up}
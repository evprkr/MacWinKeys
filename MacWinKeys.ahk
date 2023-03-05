; Autohotkey script
; Evan Parker, 2023-02-28
; http://www.asciiforge.com/macwinkeys
; Feel free to reuse, edit and redistribute
; Key remaps for Apple users stumbling their way through Windows


; Essentially, this script just remaps win + {key} hotkeys to ctrl/alt + {key}, depending on the context
; The standard ctrl + {key} shortcuts should still work normally, but certain shortcuts may not work as expected

; this stops the start menu from opening after some shortcuts complete
~LWin Up:: return
~RWin Up:: return


;
; special cases
;

; arrow keys
#Up::Send {LCtrl down}{Home down}{Home up}{LCtrl up}                ; win + up arrow -> ctrl + home (very top of the page/document)
#Down::Send {LCtrl down}{End down}{End up}{LCtrl up}                ; win + down arrow -> ctrl + end (very bottom of the page/document)
!Left::Send {LCtrl down}{Left}{LCtrl up}                            ; alt + left arrow -> ctrl + left (previous word)
!Right::Send {LCtrl down}{Right}{LCtrl up}                          ; alt + right arrow -> ctrl + right (next word)

; letter keys
#m::Send {LWin down}{Down}{LWin up}                                 ; win + m -> win + down arrow (minimize current window, kinda)
#q::Send {LAlt down}{F4}{LAlt up}                                   ; win + q -> alt + f4 (quit current application)
#+s::Send ^+s                                                       ; win + shift + s -> ctrl + shift + s (save as)
#+t::Send ^+t                                                       ; win + shift + t -> ctrl + shift + t (open last closed tab)
#+z::Send ^y                                                        ; win + shift + z -> ctrl + y (mac compatible redo)

; others
#LButton::Send {LCtrl down}{LButton down}{LButton up}{LCtrl up}     ; win + lmb -> ctrl + lmb (open link in new tab)
#Space::Send #s                                                     ; win + space -> win + s (similar to spotlight search)
#BS::Send {LShift down}{Home}{LShift up}{Del}                       ; win + backspace -> shift + home + delete (delete entire line)
!BS::Send {LShift down}{LCtrl down}{Left}{LShift up}{LCtrl up}{Del} ; alt + backspace -> ctrl + shift + left + del (delete previous word)
LWin & /::Send {LCtrl down}{/ down}{/ up}{LCtrl up}


;
; custom hotkeys
;

LWin & Tab::AltTab ; win + tab -> alt + tab (app switcher)

#+l:: ; win + shift + l -> win + ctrl + right (next desktop)
    SendInput #^{Right}
    Return

#+h:: ; win + shift + h -> win + ctrl + left (prev desktop)
    SendInput #^{Left}
    Return


;
; everything else
;

; special cases (above) are commented out here rather than removed

#a::Send ^a ; win + a -> ctrl + a
#b::Send ^b ; win + b -> ctrl + b
#c::Send ^c ; win + c -> ctrl + c
#d::Send ^d ; win + d -> ctrl + d
#e::Send ^e ; win + e -> ctrl + e
#f::Send ^f ; win + f -> ctrl + f
#g::Send ^g ; win + g -> ctrl + g
#h::Send ^h ; win + h -> ctrl + h
#i::Send ^i ; win + i -> ctrl + i
#j::Send ^j ; win + j -> ctrl + j
#k::Send ^k ; win + k -> ctrl + k
#l::Send ^l ; win + l -> ctrl + l
; #m::Send ^m ; win + m -> ctrl + m
#n::Send ^n ; win + n -> ctrl + n
#o::Send ^o ; win + o -> ctrl + o
#p::Send ^p ; win + p -> ctrl + p
; #q::Send ^q ; win + q -> ctrl + q
#r::Send ^r ; win + r -> ctrl + r
#s::Send ^s ; win + s -> ctrl + s
#t::Send ^t ; win + t -> ctrl + t
#u::Send ^u ; win + u -> ctrl + u
#v::Send ^v ; win + v -> ctrl + v
#w::Send ^w ; win + w -> ctrl + w
#x::Send ^x ; win + x -> ctrl + x
; #y::Send ^y ; win + y -> ctrl + y
#z::Send ^z ; win + z -> ctrl + z
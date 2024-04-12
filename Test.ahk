#SingleInstance force
CoordMode, Mouse, Screen ; Use absolute coordinates relative to the entire screen
^!v::  ; Your existing hotkey (Ctrl+Alt+V)
    Click -1679, 609
    Send, {enter}
    Send, {tab}
    Send, {enter}
    Send, lorfordmillsa@knox.nsw.edu.au
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Sleep, 5000  ; Start with 5 seconds and adjust as needed
    FileRead, spokenText, spoken_text.txt 

    if (spokenText = "") {   ;  Check for empty text
    MsgBox, Communication error: spoken_text.txt might be empty or unreadable.
    ExitApp  ; Or take other corrective actions 
    }

    Clipboard := spokenText 
    Send, ^v 
   
    Send, {tab}
    Send, {tab}
    ; if resolved {resolved} if open {open}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {enter} 
                                                                        
    Send, {delete} 
    Send, me
    Send, {enter}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    ; description
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Sleep, 1000
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    MsgBox, %spokenText% 

return

;Απλός Σταθεροποιητής Ποντικιού
; AutoHotkey Version: 1.x
; Language:       Ελληνικά
; Platform:       Win9x/NT
; Author:         Theodore Bechlivanis <theodoros.bechlivanis@gmail.com>
; License:		  This code is licensed under the MIT License.
;
; Script Function:
;	Το παρόν αρχείο περιλαμβάνει τον κώδικα για το δεύτερο project του προγράμματος Young Accessibility Leaders, "Απλός Σταθεροποιητής Ποντικιού για Άτομα με Ιδιοπαθή Τρόμο"
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop 
	{
	MouseGetPos, xpos, ypos ;βρίσκει τη θέση του κέρσορα
	Sleep, 100
	MouseGetPos, x, y ;βρίσκει τη θέση του κέρσορα μετά από 0.1 δευτερόλεπτα
	difx := abs(xpos - x) ;υπολογίζει τη μετατόπιση στον άξονα x
	dify := abs(ypos - y) ;υπολιγίζει τη μετατόπιση στον άξονα y
	if (difx > 100 or dify > 100) ;ελέγχει αν η μετατόπιση σε οποιονδήποτε άξονα υπερβαίνει τα 100 pixels.
		{
		MouseMove, xpos, ypos ;επιστρέφει τον κέρσορα στην αρχική θέση
		}
	}
Esc::ExitApp ;σταματάει το πρόγραμμα
return
;Basic Mouse Stabilizer
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Theodore Bechlivanis <theodoros.bechlivanis@gmail.com>
; License:		  This code is licensed under the MIT License.
;
; Script Function:
;	This is the code for the first project in the Young Accessibility Leaders curriculum, "Mouse Stabilizer for people with Essential Tremor".
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop 
	{
	MouseGetPos, xpos, ypos ;finds the position of the cursor
	Sleep, 100
	MouseGetPos, x, y ;finds the position of the cursor after 0.1 seconds 
	difx := abs(xpos - x) ;calculates x-axis displacement
	dify := abs(ypos - y) ;calculates y-axis displacement
	if (difx > 100 or dify > 100) ;checks whether displacement on either axis is greater than 100 pixels
		{
		MouseMove, xpos, ypos ;returns cursor to original position
		}
	}
Esc::ExitApp ;stops the script
return

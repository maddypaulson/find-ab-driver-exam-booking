#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
pwb := ComObjCreate("InternetExplorer.Application")
pwb.Visible := true
pwb.TheaterMode := 1
pwb.Navigate("https://scheduler.itialb4dmv.com/schAlberta")
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("btnBookAppt").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("validPermit").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("FirstName").value := "First"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("LastName").value := "Last"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("MVID").value := "1111-11111"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("Birthdate").value := "1900/01/01"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("Email").value := "first.last@gmail.com"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("PermitNumber").value := "111111-11111-111-111"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("isTermsAccepted").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("formSubmit").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("isTermsAccepted").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("acceptTerms").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
sleep,5000
pwb.document.getElementByID("postalSearch").value := "T2E 7P7"
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementByID("postalSearchRadius").selectedIndex := 3
while pwb.busy or pwb.ReadyState !=4
	sleep, 10
pwb.document.getElementById("searchSelectedLocation").click()
while pwb.busy or pwb.ReadyState !=4
	sleep, 10

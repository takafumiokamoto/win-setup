$targets = @(
"Microsoft.549981C3F5F10"
"Microsoft.Paint"
"Microsoft.ZuneMusic"
"microsoft.windowscommunicationsapps"
"Microsoft.WindowsAlarms"
"MicrosoftCorporationII.QuickAssist"
"Microsoft.Xbox.TCUI"
"Microsoft.WindowsSoundRecorder"
"Microsoft.WindowsMaps"
"Microsoft.WindowsFeedbackHub"
"Microsoft.WindowsCamera"
"Microsoft.Todos"
"Microsoft.PowerAutomateDesktop"
"Microsoft.People"
"Microsoft.MicrosoftStickyNotes"
"Microsoft.MicrosoftSolitaireCollection"
"Microsoft.MicrosoftOfficeHub"
"Microsoft.GamingApp"
"Microsoft.BingWeather"
"Microsoft.BingNews"
"Clipchamp.Clipchamp"
)
foreach($target in $targets){
    Get-AppxPackage -allusers $target | Remove-AppxPackage
}
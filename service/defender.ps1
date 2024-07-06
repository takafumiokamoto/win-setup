$disabled = @(
	"Sense"
	"MDCoreSvc"
	"WinDefend"
	"WdNisSvc"
)
. .\core.ps1
manageService $disabled '4'
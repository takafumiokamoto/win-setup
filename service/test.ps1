[Diagnostics.CodeAnalysis.SuppressMessageAttribute('UseDeclaredVarsMoreThanAssignments', '',
    Justification = '')]
$automatic = @(
    "Spooler"
)
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('UseDeclaredVarsMoreThanAssignments', '',
    Justification = '')]
$manual = @(
    "vds"
)
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('UseDeclaredVarsMoreThanAssignments', '',
    Justification = '')]
$disabled = @(
    "uhssvc"
)
. .\core.ps1
manageService $automatic '2'


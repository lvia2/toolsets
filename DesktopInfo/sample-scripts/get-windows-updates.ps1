#
# File: get-windows-updates.ps1
#
# Description: Powershell script to return various metrics from Windows Update.
# This is referenced in desktopinfo-advanced.ini
#
try {
	$msUpdateSession = New-Object -ComObject Microsoft.Update.Session
	$UpdateSearcher = $msUpdateSession.CreateUpdateSearcher()
	$SearchResult = $UpdateSearcher.Search("IsHidden=0 and IsInstalled=0")
	$totalUpdates = $($SearchResult.Updates.count)

	Write-Host "$totalUpdates"
	}
catch {
  Write-Host "<error>"
  }


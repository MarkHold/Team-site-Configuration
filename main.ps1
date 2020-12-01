$siteUrl = "https://omniademox.sharepoint.com/"

Connect-PnPOnline -Url $siteUrl –UseWebLogin

# Create the new "modern" team site
$teamSiteUrl = New-PnPSite -Type TeamSite -Title "MarkusSite" -Alias "mymodernteamsite" -Description "description" -IsPublic -Classification "classification" 

# Connect to the modern site using PnP PowerShell SP cmdlets
# Since we are connecting now to SP side, credentials will be asked
Connect-PnPOnline $teamSiteUrl

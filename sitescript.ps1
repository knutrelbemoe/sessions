
C3onnect-SPOService "https://p-admin.sharepoint.com"

#Get hubsiteid from your hubsites - add it to SiteScript.json
Get-SPOHubsite

#Add SPOSitescript to Office 365 - run this first to get the sitescript guid
Get-Content 'C:\Temp\Knut\scripts\SiteScript.json'-Raw | Add-SPOSiteScript  -Title "Puzzel Intranet Hub"



#Add Site Design to SharePoint.aspx
Add-SPOSiteDesign -Title "Group Site for Intranet Hub" -WebTemplate "64" -SiteScripts "9c65ead0-0907-499d-b8a3-62f6b4bb483d" -Description "Creates a site in the Intranet Hub"-PreviewImageUrl "https://knutspmbergen.sharepoint.com/SiteAssets/sitedesign.png" -PreviewImageAltText "site preview"



#to update a site design and set it as default, that means it will run on the "default site design" given from SharePoint

Set-SPOSiteDesign -Identity e6ce3933-0cc6-4876-be23-cce3dba6a1e7 -IsDefault $true -SiteScripts 11cefbdb-3537-4899-9c7c-8703bcfd5c90 -Title "hello world"

#Add-SPOSiteDesign
#Add-SPOSiteScript
#Get-SPOSiteDesign
#Get-SPOSiteDesignRights
#Get-SPOSiteScript
#Grant-SPOSiteDesignRights
#Remove-SPOSiteDesign
#Remove-SPOSiteScript
#Revoke-SPOSiteDesignRights

#Add-SPOSiteDesign
#  -Title <string>
#  -WebTemplate <string>
#  -SiteScripts <SPOSiteScriptPipeBind[]>
#  [-Description <string>]
#  [-PreviewImageUrl <string>]
#  [-PreviewImageAltText <string>]
#  [-IsDefault]
#  [<CommonParameters>]
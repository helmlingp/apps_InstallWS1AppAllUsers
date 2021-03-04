#############################################
# File: installWS1AppAllUsers.ps1
# Author: Phil
# Install WS1 APPX to All Users so that subsequent users get the app
#############################################

# Test if WS1 App has been downloaded
$WS1Apppath = "C:\Program Files (x86)\Airwatch\AgentUI\Resources\Bundle\AirWatchLLC.VMwareWorkspaceONE"
$WS1Appfile = "1a8c85e4ecbc4740af719220e75405f8.appxbundle"
$WS1Applicense = "1a8c85e4ecbc4740af719220e75405f8_License1.xml"
if(Test-Path "$WS1Apppath\$WS1Appfile"){
    Add-AppxProvisionedPackage -Online -PackagePath $WS1Apppath\$WS1Appfile -LicensePath $WS1Apppath\$WS1Applicense;
} else {
    
}

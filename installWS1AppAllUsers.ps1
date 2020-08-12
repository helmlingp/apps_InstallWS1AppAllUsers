#############################################
# File: installWS1AppAllUsers.ps1
# Author: Phil
# Install WS1 APPX to All Users so that subsequent users get the app
#############################################

# Test if WS1 App has been downloaded
$WS1Apppath = "C:\Program Files (x86)\Airwatch\AgentUI\Resources\Bundle\AirWatchLLC.VMwareWorkspaceONE"
$WS1Appfile = "668f4ce67ec547f3a39a59e031b8d07b.appxbundle"
$WS1Applicense = "668f4ce67ec547f3a39a59e031b8d07b_License1.xml"
if(Test-Path "$WS1Apppath\$WS1Appfile"){
    Add-AppxProvisionedPackage -Online -PackagePath $WS1Apppath\$WS1Appfile -LicensePath $WS1Apppath\$WS1Applicense;
} else {
    
}

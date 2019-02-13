To get your api key use the website https://joinjoaomgcd.appspot.com/ then click "JOIN API" then click "SHOW".

# Send-JoinMessage
A powershell function to use the api provided by Join. https://joaoapps.com/join/

    .SYNOPSIS
        Send-JoinMessage can be used with the Join service to send notifications to your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey -Title "MyTitle" -Text "MyText" -Group group.all
    .EXAMPLE
        Send-JoinMessage $myapikey title2 text2 group.android
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey "Title" "Text" -Group group.all -displayResult:$false
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey "Title" "Text" -DeviceNames "Device1,Device2" -displayURL:$true


# Get-JoinDevices
A powershell function to use the api provided by Join. https://joaoapps.com/join/

    .SYNOPSIS
        Get-JoinDevices can be used with the Join service to get the list of your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Get-JoinDevices -Apikey $myapikey
    .EXAMPLE
        Get-JoinDevices $myapikey -DeviceNameOnly:$false


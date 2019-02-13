# Send-JoinMessage
A powershell function to use the api provided by Join. https://joaoapps.com/join/

	.SYNOPSIS
        Send-JoinMessage can be used with the Join service to send notifications to your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey -Title "MyTitle" -Text "MyText" -Group group.all
    .EXAMPLE
        Send-JoinMessage $myapikey text2 title2 group.android


# Get-JoinDevices
A powershell function to use the api provided by Join. https://joaoapps.com/join/

    .SYNOPSIS
        Get-JoinDevices can be used with the Join service to get the list of your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Get-JoinDevices -Apikey $myapikey
    .EXAMPLE
        (Get-JoinDevices -Apikey $myapikey).deviceName
    .EXAMPLE
        (Get-JoinDevices -Apikey $myapikey).deviceName | Where-Object {$_ -like "Chrome*"}

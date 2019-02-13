# Send-JoinMessage
A powershell function to use the api provided by Join. https://joaoapps.com/join/

.SYNOPSIS
        Send-JoinMessage can be used with the Join service to send notifications to your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey -Title "MyTitle" -Text "MyText" -Group group.all
    .EXAMPLE
        Send-JoinMessage $myapikey text2 title2 group.android

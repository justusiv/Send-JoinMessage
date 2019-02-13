Function Send-JoinMessage
{
    <#
    .SYNOPSIS
        Send-JoinMessage can be used with the Join service to send notifications to your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Send-JoinMessage -Apikey $myapikey -Title "MyTitle" -Text "MyText" -Group group.all
    .EXAMPLE
        Send-JoinMessage $myapikey text2 title2 group.android

    #>
    param(
    [Parameter(Position=0,mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [ValidateLength(32,32)]
    [string]$Apikey,
    [Parameter(Position=1,mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [ValidateLength(1,100)]
    [string]$Title,
    [Parameter(Position=2,mandatory=$true)]
    [ValidateLength(1,3200)]
    [ValidateNotNullOrEmpty()]
    [string]$Text,
    [Parameter(Position=3,mandatory=$true)]
    [ValidateSet("group.all","group.android","group.windows10","group.phone","group.tablet","group.pc")] 
    [ValidateNotNullOrEmpty()]
    [string]$Group
    ) #end param

    Invoke-WebRequest -Uri "https://joinjoaomgcd.appspot.com/_ah/api/messaging/v1/sendPush?deviceId=$group&text=$text&title=$title&apikey=$apikey"
}
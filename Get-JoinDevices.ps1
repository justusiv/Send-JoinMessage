Function Get-JoinDevices
{
    <#
    .SYNOPSIS
        Get-JoinDevices can be used with the Join service to get the list of your devices.
    .DESCRIPTION
        
    .EXAMPLE
        Get-JoinDevices -Apikey $myapikey
    .EXAMPLE
        Send-JoinMessage $myapikey text2 title2 group.android

    #>
    param(
    [Parameter(Position=0,mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [ValidateLength(32,32)]
    [string]$Apikey
    ) #end param
$jsonobject = (Invoke-WebRequest https://joinjoaomgcd.appspot.com/_ah/api/registration/v1/listDevices?apikey=$myapikey).content | ConvertFrom-Json
$jsonobject.records | ft id, deviceId, deviceName
}

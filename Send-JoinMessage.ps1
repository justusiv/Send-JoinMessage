Function Send-JoinMessage
{
    <#
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
    [Parameter(Position=3)]
    [ValidateSet("group.all","group.android","group.windows10","group.phone","group.tablet","group.pc")] 
    [ValidateNotNullOrEmpty()]
    [string]$Group,
    [Parameter(Position=4)]
    [string]$DeviceNames,
    [Parameter()]
    [bool]$displayURL = $false,
    [Parameter()]
    [bool]$displayResult = $true
    ) #end param
    if ($DeviceNames.Length -gt 0){
       $DeviceNamesURL = "deviceNames=$DeviceNames&"
    }
    if ($Group.Length -gt 0){
       $GroupURL = "deviceId=$Group&"
    }
    if ($DeviceNames.Length -eq 0 -and $Group.Length -eq 0){
        Write-Warning "You need to specify either a group or a device"
        break
    }
    $fullWebRequest = "https://joinjoaomgcd.appspot.com/_ah/api/messaging/v1/sendPush?" + $DeviceNamesURL + $GroupURL + "text=" + $text + "&title=" + $title + "&apikey=" + $apikey
    $response = Invoke-WebRequest -Uri $fullWebRequest
    if ($displayURL){write-host $fullWebRequest}
    if ($displayResult){write-host $response.content}
}
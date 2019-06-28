$CompName = Read-Host "Please enter IP or Host name"


$INetCookies = "\\$CompName\c$\Users\POC0567\AppData\Local\Packages\KohlsPOCClient_bbqcjhznsstxt\AC\INetCookies\*.*"
$INetHistory = "\\$CompName\c$\Users\POC0567\AppData\Local\Packages\KohlsPOCClient_bbqcjhznsstxt\AC\INetHistory\*.*"
$INetCache   = "\\$CompName\c$\Users\POC0567\AppData\Local\Packages\KohlsPOCClient_bbqcjhznsstxt\AC\INetCache\*.*"

if (Get-Process -ComputerName $CompName Kohls.PointOfCommerce.WinRT.Industry -eq "Running") {
    Stop-Process Kohls.PointOfCommerce.WinRT.Industry
}

Get-ChildItem -Path $INetCookies, $INetHistory, $INetCache | Remove-Item -Recurse


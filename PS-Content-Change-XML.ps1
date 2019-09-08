$file = C:\xxx\web.config

$password = "pass123"

$user= "username"

[xml]$XmlDocument = Get-Content $file

$XmlDocument.configuration.'system.web'.identity

$XmlDocument.configuration.'system.web'.identity.password = "$password"

$XmlDocument.configuration.'system.web'.identity.userName = "$user"

$XmlDocument.configuration.'system.web'.identity

$XmlDocument.Save("$file")


$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://desktop-release.notion-static.com/Notion%20Setup%202.0.11.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'notion*'
  checksum64     = '4528BB49AB677EB73B84DA3A60840F6D1081FF0AFD5C2D64EF6247058A38C19D'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

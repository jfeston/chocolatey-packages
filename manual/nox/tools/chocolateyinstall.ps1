$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://res06.bignox.com/full/20200418/20ce570a66c649bfb1a26240b98d3c55.exe?filename=nox_setup_v6.6.0.5_full_intl.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'nox*'
  checksum      = '88508D9E5FCB58E58FD2A2FE5EA6BC1A6594D9DD926899877E0D4730E3F56FD6'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

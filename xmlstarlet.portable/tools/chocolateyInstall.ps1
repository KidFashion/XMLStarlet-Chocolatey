try {
  $package = 'xmlstarlet'
  $PackageVersion = "1.6.0"
  $url = "http://sourceforge.net/projects/xmlstar/files/xmlstarlet/$PackageVersion/xmlstarlet-$PackageVersion-win32.zip/download"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
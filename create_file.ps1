$FolderPath = "C:\Your\Specific\Folder"
$FileName = Get-Date -Format "MM-dd-yyyy"
$FullPath = Join-Path -Path $FolderPath -ChildPath "$FileName.txt"

if (!(Test-Path $FullPath)) {
    New-Item -Path $FullPath -ItemType File
}

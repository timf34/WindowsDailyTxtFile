# Create a scheduled task to run this daily using Task Scheduler

$FolderPath = "C:\Users\[Your User Name]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$FileName = Get-Date -Format "MM-dd-yyyy"
$FullPath = Join-Path -Path $FolderPath -ChildPath "$FileName.txt"

if (!(Test-Path $FullPath)) {
    New-Item -Path $FullPath -ItemType File
}

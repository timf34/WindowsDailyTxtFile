# WindowsDailyTxtFile
PowerShell scripts for automatically creating a text file with the current date on Windows and opening this file when the user logs in.

## Description
The `create_file.ps1` script creates a new text file with the current date as the filename in a specified directory. If a file with the current date already exists, the script will not create a duplicate.

The `open_file.ps1` script is designed to open the file created by create_file.ps1 using Notepad. The script is meant to be placed in the Windows Startup folder so that the file opens each time the user logs into their system.

## Setup

1. Clone the repository to your local machine.
2. Modify the `$FolderPath` in both scripts to match the directory where you want the text files to be created.
3. Set up `create_file.ps1` as a scheduled task:
    - Open Task Scheduler and select "Create Basic Task...".
    - Name your task (e.g., "Daily Text File Creation") and click "Next".
    - Choose the "Daily" trigger, then click "Next".
    - Set the start date and time for your task, then click "Next".
    - Select "Start a program" for the action, then click "Next".
    - Click "Browse..." to select the PowerShell program. This is usually located at `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`.
    - In the "Add arguments" field, enter `-ExecutionPolicy Bypass -File "C:\Your\Path\create_file.ps1"`. Replace `"C:\Your\Path\create_file.ps1"` with the actual path to your script.
    - Click "Next", review your settings, then click "Finish".
4. Save `open_file.ps1` as a `.ps1` file and create a shortcut to it in the Startup folder (which can be found at `C:\Users\[Your User Name]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`).
    - If this doesn't work, repeat step 3. above, replacing `create_file.ps1` with `open_file.ps1` in the "Add arguments" field. And instead of selecting "Daily" for the trigger, select "At log on".

## Notes

Please be aware that PowerShell scripts may be blocked from running on your system due to your execution policy. If you encounter problems, you might need to adjust the execution policy. You can do this by running `Set-ExecutionPolicy RemoteSigned` in an elevated (Run as administrator) PowerShell prompt. Be aware that this can have security implications, so ensure you understand what this means and whether it's appropriate for your context.

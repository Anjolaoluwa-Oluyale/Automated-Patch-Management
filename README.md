# Automated Patch Management Script (Windows)

This PowerShell script automates the process of checking for and installing updates on Windows systems. 

## Features:
- Check for available updates
- Automatically install updates
- Reboot the system if necessary

## Requirements:
- PowerShell
- PSWindowsUpdate module

## Usage:
1. Install the PSWindowsUpdate module:
   ```powershell
   Install-Module -Name PSWindowsUpdate -Force -SkipPublisherCheck

2. Run the script:
.\AutomatedPatchManagement.ps1

3. Schedule the script to run periodically using Task Scheduler.
To automate this process and run the script on a regular schedule, you can create a task in the Task Scheduler to run the script at intervals (e.g., daily, weekly).
i. Open Task Scheduler.
ii. Click Create Task.
iii. Under Actions, choose Start a Program and browse to your AutomatedPatchManagement.ps1 script.
iv. Under Triggers, set the schedule for when you want the updates to run.
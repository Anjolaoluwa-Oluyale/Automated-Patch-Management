# Automated Patch Management Script (Windows)

# Function to check and install updates
Function Install-Updates {
    try {
        Write-Host "Starting update check..."

        # Import the required module
        Import-Module PSWindowsUpdate

        # Check for available updates
        $updates = Get-WindowsUpdate -AcceptAll -IgnoreReboot

        if ($updates) {
            Write-Host "Found $($updates.Count) updates. Installing updates..."
            
            # Install the updates
            $updates | Install-WindowsUpdate -AcceptAll -IgnoreReboot -Verbose

            Write-Host "Updates installed successfully!"
        } else {
            Write-Host "No updates found."
        }
    } catch {
        Write-Error "An error occurred while checking or installing updates: $_"
    }
}

# Function to reboot the system if necessary
Function Reboot-SystemIfNeeded {
    # Check if the system requires a reboot
    if (Test-Path "C:\Windows\RebootRequired") {
        Write-Host "System requires a reboot. Rebooting..."
        Restart-Computer -Force
    } else {
        Write-Host "No reboot needed."
    }
}

# Main script execution
Install-Updates
Reboot-SystemIfNeeded
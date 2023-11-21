Import-Module BurntToast

$counter = 0
while ($true) {
    if ($counter % 2 -eq 0) {
        New-BurntToastNotification -AppLogo stand-up.png -Text "Stand up!", "It's time to stand up and stretch."
        echo "Stand up!"
    }
    else {
        New-BurntToastNotification -AppLogo sit-down.png -Text "Sit down!", "It's time to sit down and relax."
        echo "Sit down!"
    }

    $counter++
    Start-Sleep -Seconds 30
}

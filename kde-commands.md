## Commands to control the system

| Name            | Command                 |
| --------------- | ----------------------- |
| System-Lock     | loginctl lock-session   |
| System-Unlock   | loginctl unlock-session |
| System-Reboot   | systemctl reboot        |
| System-Suspend  | systemctl suspend       |
| System-Shutdown | systemctl poweroff      |
| Turn Screen off | xset dpms force off     |
| Turn Screen on  | xset dpms force on      |

## Screenshot Manipulation

| Name                 | Command                                                                                                                                                                                                                                                                    |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Screenshot           | spectacle -b                                                                                                                                                                                                                                                               |
| Screenshot to Phone  | file=$HOME/Pictures/kde/$(hostname)_$(date "+%Y%m%d_%H%M%S").png; spectacle -bo "${file}" && while ! [ -f "${file}" ]; do sleep 0.5; done && kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "${file}"                                                            |
| Webcam shot to Phone | file="$HOME/Pictures/kde/WebcamImage_$(date "+%Y%m%d\_%H%M%S").png"; ffmpeg -f video4linux2 -s 1280x720 -i /dev/video0 -ss 0:0:1 -frames 1 "${file}" && while ! [ -f "${file}" ]; do sleep 0.5; done && kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "${file}" |

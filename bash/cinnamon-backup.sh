#!/bin/bash

# Visit https://www.addictivetips.com/ubuntu-linux-tips/backup-the-cinnamon-desktop-settings-on-linux/

# Backup The Cinnamon Desktop
dconf dump /org/cinnamon/ > cinnamon_desktop_backup

# Show file
# cat cinnamon_desktop_backup | more

# Restore The Cinnamon Desktop
# the Cinnamon desktop will crash after restoring a backup. For whatever reason, the desktop can’t handle the sudden changes.
# To fix this problem, you’ll need to log out of your PC, and then back in. If logging in and out doesn’t help, you may need to reboot altogether.
dconf load /org/cinnamon/ < cinnamon_desktop_backup

# After logging back into the desktop, everything should look like it did when you ran the backup.


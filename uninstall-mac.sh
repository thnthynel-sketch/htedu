#!/bin/bash
for APP in com.microsoft.Word com.microsoft.Powerpoint; do rm -f "$HOME/Library/Containers/$APP/Data/Documents/wef/htedu.manifest.xml"; done
echo "Đã gỡ add-in HTEdu. Khởi động lại Word/PowerPoint."

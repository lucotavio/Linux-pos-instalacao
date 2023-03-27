#!/bin/bash

if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' /home/$USER/.vmware/preferences; then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> /home/$USER/.vmware/preferences
fi

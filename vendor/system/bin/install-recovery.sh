#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7907328 439a1537f5c23a3c9fec77eb7e6e7a536979b094 5324800 d1d56cb8d7f4877c8cdc5b2ef91e2fd0145c5932
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:7907328:439a1537f5c23a3c9fec77eb7e6e7a536979b094; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5324800:d1d56cb8d7f4877c8cdc5b2ef91e2fd0145c5932 EMMC:/dev/block/mmcblk0p6 439a1537f5c23a3c9fec77eb7e6e7a536979b094 7907328 d1d56cb8d7f4877c8cdc5b2ef91e2fd0145c5932:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:9216000:0566be44a64b4ecd3d1c1023e6120fab77a549d1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8605696:729130d801f6bf1abf268e4c0c4b839c31276ae4 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 0566be44a64b4ecd3d1c1023e6120fab77a549d1 9216000 729130d801f6bf1abf268e4c0c4b839c31276ae4:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi

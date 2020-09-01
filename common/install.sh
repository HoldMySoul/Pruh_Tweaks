#!/system/bin/sh
bin=/system/bin
xbin=/system/xbin
if [ ! -e $xbin/sqlite3 ]; then
 mkdir -p $MODPATH$bin
 mv -f $MODPATH/sqlite3 $MODPATH$bin
 ibin=/bin
elif [ ! -e $bin/sqlite3 ]; then
 mkdir -p $MODPATH$xbin
 mv -f $MODPATH/sqlite3 $MODPATH$xbin
 ibin=/xbin
fi;
if [ ! -e $xbin/busybox ]; then
 mkdir -p $MODPATH$bin
 mv -f $MODPATH/busybox $MODPATH$bin
 ibin=/bin
elif [ ! -e $bin/busybox ]; then
 mkdir -p $MODPATH$xbin
 mv -f $MODPATH/busybox $MODPATH$xbin
 ibin=/xbin
fi;
rm -rf /cache
rm -rf /data/dalvik-cache


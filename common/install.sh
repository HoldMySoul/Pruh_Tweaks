#!/system/bin/sh
bin=/system/bin
xbin=/system/xbin
if [ ! -e $xbin/sqlite3 ]; then
 mkdir -p $MODPATH$bin
 mv -f $MODPATH/binaries/sqlite3 $MODPATH$bin
 ibin=/bin
elif [ ! -e $bin/sqlite3 ]; then
 mkdir -p $MODPATH$xbin
 mv -f $MODPATH/binaries/sqlite3 $MODPATH$xbin
 ibin=/xbin
fi;
if [ ! -e $xbin/busybox ]; then
 mkdir -p $MODPATH$bin
 mv -f $MODPATH/binaries/busybox $MODPATH$bin
 ibin=/bin
elif [ ! -e $bin/busybox ]; then
 mkdir -p $MODPATH$xbin
 mv -f $MODPATH/binaries/busybox $MODPATH$xbin
 ibin=/xbin
fi;


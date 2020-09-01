#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
for dir in /data /sdcard ; do
	for db in `/system/bin/busybox find $dir -iname *.db` ; do
		/system/bin/sqlite3 $db "VACUUM;"
		/system/bin/sqlite3 $db "REINDEX;"
	done
done

for dir in /data /cache /sdcard ; do
	for shits in *.log *.tmp ; do
		for clean in `system/bin/busybox find $dir -iname $shits` ; do
			rm -rf $clean
		done
	done
done

for dir in /cache /data/dalvik-cache/ ; do
	for ta in `/system/bin/busybox find $dir -iname *.apk` ; do
		rm -rf $ta
	done
done

rm -rf /data/anr/*
rm -rf /data/clipboard/*
rm -rf /data/last_alog
rm -rf /data/log/*
rm -rf /data/mlog/*
rm -rf /data/system/dropbox/*
rm -rf /data/system/usagestats/*
rm -rf /data/tombstones/*
rm -rf /sdcard/LOST.DIR/*
# This script will be executed in late_start service mode
# More info in the main Magisk thread

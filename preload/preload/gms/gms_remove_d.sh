#!/system/bin/sh
#===============================================================================
#
#          FILE: gms_install.sh
# 
#         USAGE: ./gms_install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: linkscue (scue), linkscue@gmail.com
#       CREATED: Friday, July 12, 2013 06:46:11 HKT HKT
#     COPYRIGHT: Copyright (c) 2013, linkscue
#      REVISION: 0.1
#  ORGANIZATION: ATX风雅组
#===============================================================================

gms_dir=/preload/gms
cd $gms_dir

#remount system
mount -o remount,rw /system

# remove link file
find system/ -type f | \
    while read n; do
        if [[ -L /$n ]]; then
            rm /$n
        fi
    done

#remount system
mount -o remount,ro /system

cd -

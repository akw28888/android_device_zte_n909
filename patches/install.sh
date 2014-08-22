#!/bin/bash

curdir=`pwd`
MYPATH=$(readlink -f $0)
PATCHESDIR=$(dirname $MYPATH)
installAll=0
patchmode=""
revertmode=0
[ "${ANDROID_TOP_DIR}" = "" ] && ANDROID_TOP_DIR=$(cd $PATCHESDIR/../../../..;pwd;cd $curdir)
if [ $# -ge 1 ]; then
    if echo $* | grep -q "\-all" ; then
        installAll=1
    fi
    if echo $* | grep -q "\-am"; then
        patchmode=am
    fi
    if echo $* | grep -q "\-r"; then
        revertmode=1;
    fi
fi

cd $PATCHESDIR
for fpath in $(find . -type f -follow -name "*.patch" -o -name "*.diff" | sed -e "s:^\./::" | sort -n); do
     mpath=$fpath
     if [ "${fpath:0:1}" = "-" ]; then
        [ "$installAll" != "1" ] && continue
        mpath=${fpath:1:}
     fi
     patchfile=$(basename $mpath)
     project=$(basename $(dirname "$mpath") | sed -e "s/^android_//g")
     for i in $(seq 8); do
         project=$(echo $project | sed 's/_/\//')
         if [ -d "$ANDROID_TOP_DIR/$project" ]; then break; fi
     done

     if [ -d $ANDROID_TOP_DIR/$project ]; then
          if [ $revertmode -eq 0 ]; then
               [ "${patchfile:0:1}" = "-" -a $installAll -eq 0 ] && continue
               echo "applying $patchfile for $project..."
               cd "$ANDROID_TOP_DIR/$project"
               if [ "$patchmode" = "am" ]; then
                      git am --abort >/dev/null 2>/dev/null
                      git am -3 $PATCHESDIR/$fpath || exit 1
               else
                      patch -p1 -s < $PATCHESDIR/$fpath || exit 1
               fi
          else
               cd "$ANDROID_TOP_DIR/$project"
               git am --abort >/dev/null 2>/dev/null
               git rebase --abort >/dev/null 2>/dev/null        
               git stash > /dev/null 2>/dev/null
               git clean -df >/dev/null 2>/dev/null
          fi
     fi
done

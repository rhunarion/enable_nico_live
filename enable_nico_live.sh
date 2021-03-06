#!/bin/sh

function change_klimit_value() {
    python s2x.py -x $DOMAIN/settings.sol
    sed -i "s/<data name=\"klimit\" type=\"number\" value=\".*\"\/>/<data name=\"klimit\" type=\"number\" value=\"-2.0\"\/>/g" $DOMAIN/settings.xml
    python s2x.py -s $DOMAIN/settings.xml
    rm -v $DOMAIN/settings.xml
}

CUR_DIR=`pwd`
FLASH_DIR=~/.macromedia/Flash_Player/macromedia.com/support/flashplayer/sys/

cd $FLASH_DIR
wget https://raw.githubusercontent.com/rhunarion/enable_nico_live/master/s2x.py
DOMAIN=\#live.nicovideo.jp change_klimit_value
DOMAIN=\#res.nimg.jp change_klimit_value
rm -v s2x.py
cd $CUR_DIR

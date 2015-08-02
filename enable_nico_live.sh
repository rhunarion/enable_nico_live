#!/bin/sh                                                                                                                                                  

CUR_DIR=`pwd`
DIRECTORY=~/.macromedia/Flash_Player/macromedia.com/support/flashplayer/sys/

function change_klimit_value() {
    python s2x.py -x $DOMAIN/settings.sol
    sed -i "s/<data name=\"klimit\" type=\"number\" value=\"100.0\"\/>/<data name=\"klimit\" type=\"number\" value=\"-2.0\"\/>/g" $DOMAIN/settings.xml
    python s2x.py -s $DOMAIN/settings.xml
    rm $DOMAIN/settings.xml
}

cd $DIRECTORY
wget https://raw.githubusercontent.com/rhunarion/s2x.py/master/s2x.py
DOMAIN=\#live.nicovideo.jp change_klimit_value
DOMAIN=\#res.nimg.jp change_klimit_value
rm s2x.py
cd $CUR_DIR
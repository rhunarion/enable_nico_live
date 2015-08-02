# Ubuntuでニコニコ生放送が見れない
Ubuntuでニコニコ生放送／ニコ生を見ようとすると
```
ローカルストレージ res.nimg.jp はコンピューターに情報を保存する許可を要求しています。
```
というダイアログが出るが操作することができず、表示されたままになるバグを修正するシェルスクリプトです。  
使い方はスクリプトをダウンロードして実行するだけです。
```
wget https://raw.githubusercontent.com/rhunarion/enable_nico_live/master/enable_nico_live.sh
sh ./enable_nico_live.sh
```

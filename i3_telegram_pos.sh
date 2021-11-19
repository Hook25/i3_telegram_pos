res=$(xwininfo -root | grep -oP '(?:Width:\s+)(\d+)|(?:Height:\s+)(\d+)' | sed 's/Height://g' | sed 's/Width://g' | sed ':a;N;$!ba;s/\n/ /g')
wh=(${res//;/ })
w=${wh[0]}
h=${wh[1]}
pw=`expr $w - 400`
ph=`expr $h - 460 - 39`

i3-msg "[class=TelegramDesktop] floating enable"
i3-msg "[class=TelegramDesktop] resize set 400 400"
i3-msg "[class=TelegramDesktop] move position $pw $ph"

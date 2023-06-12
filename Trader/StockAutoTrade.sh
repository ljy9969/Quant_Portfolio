#!/bin/bash

__conda_setup="$('/home/jeon2/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"

if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jeon2/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jeon2/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jeon2/anaconda3/bin:$PATH"
    fi
fi

echo $(date '+%Y-%m-%d %H:%M:%S')
echo "월요일 오후 1시에 자동으로 주식을 매수합니다."

conda activate study
python /mnt/FE0A5E240A5DDA6B/workspace/Quant_Portfolio/Trader/StockAutoTrade.py
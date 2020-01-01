#!/usr/bin/env bash

array=( 
    "https://www.youtube.com/user/mtf169"
    "https://www.youtube.com/channel/UCT-GpMtIFhX9EMA0Eauevhw"
    "https://www.youtube.com/channel/UCiiFR7xxRh9Ajof8psp3yRA"
    "https://www.youtube.com/channel/UCZzXBTOSdtmOz9_VMYffr4g"
    "https://www.youtube.com/channel/UCE_lTvaMHuco_Oh3-69LkCA"
    "https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA"
    "https://www.youtube.com/channel/UC8raOG7HXJoCUygx219fU4A"
)

for i in "${array[@]}"
do
    /usr/local/bin/youtube-dl "$i" \
    --dateafter now-1day \
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' \
    --download-archive ~/.cache/youtube-dl/youtube-dl-seen.conf \
    --write-description \
    --output "/Volumes/Ext1/Videos/YouTube/%(uploader)s/%(upload_date)s - %(title)s.%(ext)s"
done

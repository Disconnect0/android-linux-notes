#!/bin/sh
echo "Check here to get latest CAF Tags: https://wiki.codeaurora.org/xwiki/bin/QAEP/release"
echo "what is your CAF Tag"
read CAF
echo "Fetching $CAF"

git fetch https://source.codeaurora.org/quic/la/kernel/msm-4.14/ $CAF
git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0/ $CAF
git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api/ $CAF
git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn/ $CAF
git merge FETCH_HEAD
git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel/ $CAF
git merge FETCH_HEAD

echo "Done Fetching and It's Ready to be Commited just use the command "git push""

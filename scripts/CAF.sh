#!/bin/sh
echo "Check here to get latest CAF Tags: https://wiki.codeaurora.org/xwiki/bin/QAEP/release"
echo "Place this in your Kernel Source"
echo "What is Your Kernel Version?"
read Kernel

echo "What is the Latest CAF Tag of your "
read CAF

echo "Fetching $CAF CAF Tag"

git fetch https://source.codeaurora.org/quic/la/kernel/msm-$Kernel/ $CAF
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0/ $CAF
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api/ $CAF
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn/ $CAF
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel/ $CAF
git merge FETCH_HEAD

echo "Done Fetching and It's Ready to be Committed just use the command "git push""

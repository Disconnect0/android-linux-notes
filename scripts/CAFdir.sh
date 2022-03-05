#!/bin/sh
echo "Check here to get latest CAF Tags: https://wiki.codeaurora.org/xwiki/bin/QAEP/release"

echo "What is Your Kernel Version?"
read Kernel

echo "What is the Latest CAF Tag of your Chipset/Device"
read CAF

echo "Where's your Kernel Location? (btw you dont need (~) just add the Directory of your Kernel)"
read KERNEL_DIR

# All Stuffs Begins here
cd ~/$KERNEL_DIR
echo "."
echo "."
echo "On the Kernel's Directory now"
echo "."
echo "If you Mistaken Some things, BETTER TO CANCEL IT NOW!"
echo "."
echo "CAF Version: $CAF"
echo "."
echo "Now Fetching The CAF Tag(s) to the Kernel"
echo "."
echo "."
git fetch https://source.codeaurora.org/quic/la/kernel/msm-$Kernel/ $CAF
echo "Now Merging"
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0/ $CAF
echo "Now Merging"
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api/ $CAF
echo "Now Merging"
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn/ $CAF
echo "Now Merging"
git merge FETCH_HEAD

git fetch https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel/ $CAF
echo "Now Merging"
git merge FETCH_HEAD

echo "Done Merging and (btw test it first) It's Ready to be Committed just use the command "git push""

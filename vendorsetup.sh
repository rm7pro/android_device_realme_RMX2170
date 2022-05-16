# vendor/hotword
if [ -e vendor/hotword ]; then
    echo "repo vendor/hotword exists.. Skipping cloning." && echo ""
else
    echo "Now will clone vendor/hotword" && echo ""
    git clone https://github.com/realme-sm7125/vendor_hotword vendor/hotword
    echo "Done cloning of vendor/hotword" && echo ""
fi

# proton clang
if [ -e prebuilts/clang/host/linux-x86/clang-trb ]; then
    echo "TheRagingBeast clang exists... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone TheRagingBeast clang" && echo ""
    git clone --depth=1 https://gitlab.com/varunhardgamer/trb_clang prebuilts/clang/host/linux-x86/clang-trb
    if [ -e prebuilts/clang/host/linux-x86/clang-trb ]; then
        echo "Done cloning of TheRagingBeast clang" && echo "" && sleep 0.5
    else
        echo "There is some problem in cloning TheRagingBeast clang" && echo "" && sleep 0.5
    fi
fi

# dirac
if [ -e packages/apps/RealmeDirac ]; then
    echo "RealmeDirac exist... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Realme dirac" && echo ""
    git clone https://github.com/realme-sm7125/android_packages_apps_RealmeDirac packages/apps/RealmeDirac
    if [ -e packages/apps/RealmeDirac ]; then
        echo "Done cloning of Realme dirac" && echo && sleep 0.5
    else
        echo "There is some problem in cloning Realme dirac" && echo "" && sleep 0.5
    fi
fi

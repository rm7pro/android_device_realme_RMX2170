
# proton clang
if [ -e prebuilts/clang/host/linux-x86/clang-proton ]; then
    echo "Proton clang exists... Skipping cloning." && echo "" && sleep 0.5
else
    echo "Now will clone Proton clang" && echo ""
    git clone --depth=1 https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/clang-proton
    if [ -e prebuilts/clang/host/linux-x86/clang-proton ]; then
        echo "Done cloning of Proton clang" && echo "" && sleep 0.5
    else
        echo "There is some problem in cloning Proton clang" && echo "" && sleep 0.5
    fi
fi

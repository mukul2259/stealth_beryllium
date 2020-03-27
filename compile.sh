make O=out ARCH=arm64 stealth_defconfig

export PATH="/home/dhirmukul3/stealth/toolchains/linux-x86/clang-r377782c/bin:/home/dhirmukul3/stealth/toolchains/aarch64-linux-android-4.9/bin:$PATH"
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=/home/dhirmukul3/stealth/toolchains/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

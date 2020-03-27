make O=out ARCH=arm64 stealth_defconfig

export PATH="/home/dhirmukul3/stealth/toolchains/proton-clang/bin:$PATH"
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabi-

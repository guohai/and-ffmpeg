#!/bin/bash


NDK=/home/guohai/dev/a/android-ndk-r7
PLATFORM=$NDK/platforms/android-14/arch-arm/
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86

./configure --target-os=linux \
	--arch=arm \
	--enable-version3 \
	--enable-gpl \
	--disable-stripping \
	--disable-ffmpeg \
	--disable-ffplay \
	--disable-ffserver \
	--disable-ffprobe \
	--disable-encoders \
	--disable-muxers \
	--disable-devices \
	--disable-protocols \
	--enable-protocol=file \
	--enable-avfilter \
	--disable-network \
	--disable-mpegaudio-hp \
	--disable-avdevice \
	--enable-cross-compile \
	--cc=$PREBUILT/bin/arm-linux-androideabi-gcc \
	--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
	--nm=$PREBUILT/bin/arm-linux-androideabi-nm \
	--extra-cflags="-fPIC -DANDROID" \
	--disable-asm \
	--enable-neon \
	--enable-armv5te \
	--extra-ldflags="-Wl,-T,$PREBUILT/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x -Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib --whole-archive -nostdlib $PREBUILT/lib/gcc/arm-linux-androideabi/4.4.3/crtbegin.o $PREBUILT/lib/gcc/arm-linux-androideabi/4.4.3/crtend.o -lc -lm -ldl"


# Flyme-Devices-I9260
Flyme For Galaxy Premier GT-I9260 Based on Cyanogenmod

##### Flyme Patch ######
source build/envsetup.sh

flyme config

adb kill-server

adb root

flyme newproject

flyme patchall

flyme fullota

flyme cleanall

flyme upgrade


##### Delete LibreOffice #####
sudo apt-get remove --purge libreoffice*


##### Essential Libs #####
sudo apt-get install bison ccache libc6 build-essential curl flex g++-multilib g++ gcc-multilib git-core gnupg gperf x11proto-core-dev tofrodos libx11-dev:i386 libgl1-mesa-dev libreadline6-dev:i386 libgl1-mesa-glx:i386 lib32ncurses5-dev libncurses5-dev:i386 lzop squashfs-tools xsltproc pngcrush schedtool zip zlib1g-dev:i386 zlib1g-dev lib32ncurses5 lib32z1 m4 phablet-tools meld 


##### Oracle JDK #####
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install oracle-java8-installer


##### Flyme Boot.img #####
    export BOOTCLASSPATH /system/framework/core-libart.jar:/system/framework/conscrypt.jar:/system/framework/okhttp.jar:/system/framework/core-junit.jar:/system/framework/bouncycastle.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/telephony-common.jar:/system/framework/voip-common.jar:/system/framework/ims-common.jar:/system/framework/mms-common.jar:/system/framework/android.policy.jar:/system/framework/apache-xml.jar:/system/framework/flyme-framework.jar:/system/framework/flyme-telephony-common.jar:/system/framework/meizu2_jcifs.jar
    export SYSTEMSERVERCLASSPATH /system/framework/org.cyanogenmod.platform.jar:/system/framework/org.cyanogenmod.hardware.jar:/system/framework/services.jar:/system/framework/ethernet-service.jar:/system/framework/wifi-service.jar

##### Android Logcat #####
adb logcat *:E >ERROR.LOG

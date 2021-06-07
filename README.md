# LineageOS device tree for the Asus Zenfone 8

Description
-----------

This repository is to build LineageOS for the Zenfone 8 (sake)

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos/repo
        cd ~/lineageos/repo

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b lineage-18.1

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <project name="whatawurst/android_device_asus_sake" path="device/asus/sake" />
            <project name="whatawurst/android_device_asus_sm8350-common" path="device/asus/sm8350-common" remote="github" />
            <project name="whatawurst/android_kernel_asus_sm8350" path="kernel/asus/sm8350" remote="github" />
            <project name="whatawurst/android_vendor_asus_sake" path="vendor/asus/sake" remote="github" />
        </manifest>

* Sync the repo:

        repo sync

* Extract vendor blobs

        cd device/asus/sake
        ./extract-files.sh

* Setup the environment

        source build/envsetup.sh
        lunch lineage_sake-userdebug

* Build LineageOS

        m -j20 bacon

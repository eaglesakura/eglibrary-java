#! /bin/sh -eu


# setup
## gcloud init
# ../gradlew assembleAndroidTest

gcloud  beta test android run --type instrumentation --app script/.cloudtest/dummyapp.apk \
        --test android-camera/build/outputs/apk/androidTest/debug/android-camera-debug-androidTest.apk \
        --device-ids sailfish,serranolte,Nexus4,Nexus5,Nexus6,Nexus9 \
        --os-version-ids 19,21,22,23,24,25,26

#! /bin/sh
repo_sync() {
    echo "########################################"
    echo "## sync $1 / $2"
    echo "########################################"
    cd $1

    git push origin $2
    cd ..
}
# java
repo_sync "geo-utils" "develop"
repo_sync "json-wrapper" "develop"
repo_sync "simple-logger" "develop"
repo_sync "simple-serialize" "develop"
repo_sync "simple-utils" "develop"
repo_sync "junit-support" "develop"

# android
repo_sync "android-bluetooth" "develop"
repo_sync "android-canvas-graphics" "develop"
repo_sync "android-command-service" "develop"
repo_sync "android-com.eaglesakura.android.device.egl" "develop"
repo_sync "android-framework" "develop"
repo_sync "android-net" "develop"
repo_sync "android-simple-utils" "develop"
repo_sync "android-text-kvs" "develop"
repo_sync "android-thread" "develop"
repo_sync "greendao-wrapper" "develop"
repo_sync "onactivityresult-invoke" "develop"
repo_sync "small-aquery" "develop"
repo_sync "rxandroid-support" "develop"
repo_sync "android-devicetest-support" "develop"
repo_sync "android-unittest-support" "develop"
repo_sync "margarineknife" "develop"
repo_sync "garnet" "develop"
repo_sync "android-camera" "develop"
repo_sync "light-saver" "develop"
repo_sync "android-gms" "develop"
repo_sync "android-firebase" "develop"

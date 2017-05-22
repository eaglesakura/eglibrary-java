#! /bin/sh
git submodule update --init

repo_sync() {
    echo "########################################"
    echo "## sync $1 / $2"
    echo "########################################"
    cd $1

    git config core.firelmode false
    git clean -f
    git fetch
    git branch -d $2
    git checkout -f $2
    git pull origin $2
    git branch
    cd ..
}

# java
repo_sync "geo-utils"           "develop"
repo_sync "json-wrapper"        "develop"
repo_sync "simple-logger"       "develop"
repo_sync "publd-serializer"    "develop"
repo_sync "java-commons"        "develop"
repo_sync "junit-support"       "develop"

# android
repo_sync "alternet"                    "v2.2.x"
repo_sync "android-bluetooth"           "v1.2.x"
repo_sync "android-camera"              "v1.2.x"
repo_sync "android-command-service"     "v1.4.x"
repo_sync "android-commons"             "v2.2.x"
repo_sync "android-devicetest-support"  "v2.2.x"
repo_sync "android-firebase"            "v1.10.2.x"
repo_sync "android-gms"                 "v1.10.2.x"
repo_sync "android-text-kvs"            "v2.3.x"
repo_sync "android-unittest-support"    "v1.5.x"
repo_sync "cerberus"                    "v2.4.x"
repo_sync "garnet"                      "v1.1.x"
repo_sync "greendao-wrapper"            "v2.3.x"
repo_sync "light-saver"                 "v1.3.x"
repo_sync "margarineknife"              "v1.4.x"
repo_sync "onactivityresult-invoke"     "v1.2.x"
repo_sync "sloth-framework"             "v3.25.1"
repo_sync "small-aquery"                "v1.2.x"

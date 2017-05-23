#! /bin/sh
git submodule update --init

repo_sync() {
    echo "########################################"
    echo "## sync $1 / $2"
    echo "########################################"
    cd $1

    git config core.filemode false
    git clean -f
    git fetch
    git branch -d $2
    git checkout -f $2
    git pull origin $2
    git branch -a
    cd ..
}

repo_sync "alternet"                    "v2.3.x"        # updated version
repo_sync "android-bluetooth"           "v1.3.x"        # updated version
repo_sync "android-camera"              "v1.3.x"        # updated version
repo_sync "android-command-service"     "v1.5.x"        # updated version
repo_sync "android-commons"             "v2.3.x"        # updated version
repo_sync "android-devicetest-support"  "v2.3.x"        # updated version
repo_sync "android-firebase"            "v1.10.2.x"
repo_sync "android-gms"                 "v1.10.2.x"
repo_sync "android-text-kvs"            "v2.4.x"        # updated version
repo_sync "android-unittest-support"    "v1.6.x"        # updated version
repo_sync "cerberus"                    "v2.4.x"
repo_sync "garnet"                      "v1.1.x"
repo_sync "geo-utils"                   "v1.2.x"        # updated version
repo_sync "greendao-wrapper"            "v2.3.x"
repo_sync "java-commons"                "v2.1.x"        # updated version
repo_sync "json-wrapper"                "v1.2.x"        # updated version
repo_sync "junit-support"               "v1.2.x"        # updated version
repo_sync "light-saver"                 "v1.3.x"
repo_sync "margarineknife"              "v1.4.x"
repo_sync "onactivityresult-invoke"     "v1.2.x"
repo_sync "publd-serializer"            "v2.1.x"        # updated version
repo_sync "simple-logger"               "v2.1.x"        # updated version
repo_sync "sloth-framework"             "v3.25.2.x"     # updated version
repo_sync "small-aquery"                "v1.2.x"

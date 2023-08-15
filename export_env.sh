#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export PATCH_APPS=youtube,youtube_music,twitter,reddit,spotify,twitch,windy,irplus,instagram,grecorder,candyvpn,sonyheadphone,pixiv,microg

export GLOBAL_CLI_DL=https://github.com/revanced/revanced-cli
export GLOBAL_PATCHES_DL=https://github.com/revanced/revanced-patches
export GLOBAL_PATCHES_JSON_DL=https://github.com/revanced/revanced-patches
export GLOBAL_INTEGRATIONS_DL=https://github.com/revanced/revanced-integrations
export GLOBAL_KEYSTORE_FILE_NAME=revanced.keystore

export DOCKERHUB_USERNAME=mkkelvinhk

export EXTRA_FILES=https://github.com/inotia00/mMicroG/releases@microg.apk,https://github.com/revanced/revanced-integrations/releases@integrations.apk

export YOUTUBE_VERSION=18.30.37
export YOUTUBE_CLI_DL=https://github.com/inotia00/revanced-cli
export YOUTUBE_PATCHES_DL=https://github.com/inotia00/revanced-patches
export YOUTUBE_PATCHES_JSON_DL=https://github.com/inotia00/revanced-patches
export YOUTUBE_INTEGRATIONS_DL=https://github.com/inotia00/revanced-integrations
export YOUTUBE_EXCLUDE_PATCH=custom-branding-icon-revancify-red,custom-branding-icon-revancify-blue,custom-branding-youtube-name

export YOUTUBE_MUSIC_VERSION=latest
export YOUTUBE_MUSIC_CLI_DL=https://github.com/inotia00/revanced-cli
export YOUTUBE_MUSIC_PATCHES_DL=https://github.com/inotia00/revanced-patches
export YOUTUBE_MUSIC_PATCHES_JSON_DL=https://github.com/inotia00/revanced-patches
export YOUTUBE_MUSIC_INTEGRATIONS_DL=https://github.com/inotia00/revanced-integrations
export YOUTUBE_MUSIC_EXCLUDE_PATCH=custom-branding-icon-revancify-red,custom-branding-icon-revancify-blue

export TWITTER_VERSION=9.98.0-release.0
export TWITTER_EXCLUDE_PATCH=hide-views-stats

export REDDIT_VERSION=latest
export REDDIT_CLI_DL=https://github.com/inotia00/revanced-cli
export REDDIT_PATCHES_DL=https://github.com/inotia00/revanced-patches
export REDDIT_PATCHES_JSON_DL=https://github.com/inotia00/revanced-patches
export REDDIT_INTEGRATIONS_DL=https://github.com/inotia00/revanced-integrations
export REDDIT_EXCLUDE_PATCH=hide-place-button

export SPOTIFY_VERSION=latest

export TWITCH_VERSION=15.4.1

export WINDY_VERSION=latest

export IRPLUS_VERSION=latest

export INSTAGRAM_VERSION=275.0.0.27.98

export GRECORDER_VERSION=latest

export CANDYVPN_VERSION=latest

export SONYHEADPHONE_VERSION=latest

export PIXIV_VERSION=latest

#!/bin/sh
# ========================================================
# 環境定義ファイルの作成
# ========================================================
# 環境変数用のディレクトリが無ければ作成
mkdir -p /var/env
# 環境変数ファイルの作成
envsubst < /tmp/env/app.env.template > /var/env/app.env

# 作成したapp.envを読み込む
source /var/env/app.env

# app.envで読み込んだ環境変数を標準出力する
echo ${STRING} > /var/log/test.log

#コンテナを起動し続ける
tail -f /dev/null
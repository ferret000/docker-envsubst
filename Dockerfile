#################################################
# コンテナの作成
#################################################
# ベースイメージ取得
# ベースイメージ取得(Amazon Correttoを利用)
FROM amazoncorretto:11
# 環境変数用ファイルをコピー
COPY ./env/* /tmp/env/
# shellのコピー
COPY ./shell/* /opt/shell/
# 初期設定(ライブラリのインストールなど)
RUN \
	# ========================================================
	# ライブラリをインストール
	# ========================================================
	yum -y update && \
	yum -y install util-linux shadow-utils gettext && \
	rm -rf /var/cache/yum/* && \
	yum clean all && \
	# ========================================================
	# 実行権限の付与
	# ========================================================
	chmod +x /opt/shell/*

# shellの実行
CMD ["/bin/sh", "/opt/shell/run_init.sh"]
# docker-envsubst

## やりたいこと

1. Docker起動時に環境変数を指定する
2. Docker起動時に読み込んだ環境変数を基に、ローカルに環境変数ファイルを作成する
3. 別ユーザーでShellを実行した際、ローカルに作成した環境変数ファイルを読み込む

上記流れで処理する事で、Docker上で別ユーザー間の環境変数の引き渡しを行うことができるようになる。

## その他仕様

- docker-compose でDockerの定義をする
- docker-compose に環境変数を読み込む定義を記載する
- コンテナは常時起動させる

## ファイル構成

``` bash
.
├── Dockerfile
├── README.md
├── docker-compose.yml
├── env
│   └── app.env.template
└── shell
    └── run_init.sh
```
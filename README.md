# README

## なにをつくるのか？
簡単なECショップ（決済機能なし）を作ります。
アクターは、運営スタッフと利用者（会員）を想定します。

https://lucid.app/lucidchart/invitations/accept/915ec90a-6220-4080-a7e6-3ee6eb0b1dea

## How to start

### コンソールから以下の手順でコマンドを叩く
1. git clone https://github.com/yokohama/test_salon-1.git
2. cd test_salon-1
3. .envと、.env.developmentファイルをSlackで担当者からもらう。
4. .evnと、.env.developmentファイルを、test_salon-1フォルダのrootに置く。
5. make init
6. docker-compose up

### ブラウザでアクセス
http://localhost:3000

### コンソールからデータベースにアクセス
```
$ ./bin/mysql.sh
```




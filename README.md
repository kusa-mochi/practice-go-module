# practice-go-module

## 概要

ローカルで作成し、ネットから公開していないGoモジュールを使うサンプル

- greeting：ローカルで作成し、参照先としたいモジュール
- hello：greetingモジュールを参照するサンプル

## モジュールが使えるようになるまでに行った手順

1. 最初はgreeting/go.mod, hello/go.modファイルは無い。以下の手順で生成する。
1. `cd greeting`
1. `go mod init greeting.com/greeting` （参照先モジュール "greeting" での作業はここまで）
1. `cd ../hello`　（以下、参照元コード "hello" の作成）
1. `go mod init hello.com/hello`
1. hello/main.goのimport文に "greeting.com/greeting" を追加。
1. `go mod edit -replace greeting.com/greeting=../greeting`
1. `go mod tidy`
1. `go run main.go` これでモジュール内の関数Helloが実行されたら成功

参考：[GolangでModule(モジュール)について説明して、どう使えるか紹介します。](https://dev-yakuza.posstree.com/golang/module/)

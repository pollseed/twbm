#twbm
---
## how to use

[![Join the chat at https://gitter.im/pollseed/twbm](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/pollseed/twbm?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

1. [twitter developer](https://apps.twitter.com/)で登録後キーなどを取得
2. キーをソースに埋め込み
3. 以下コードでツイート

```
$ bundle exec rake twitter:tweet
```

## modelの適用

```
$ bundle exec rake db:migrate
```

## directory
以下は、このpjのadminとjobの分け方サンプル
なぜadminとjobを一緒にしているのかはgoogledocの通り

### admin
* 管理機能
* 変わった使い方は今のところない

### job
* cronで起動する形を基本形態とする
* config/schedule.rbを使う→job製作者が適宜編集する

```
# copy cron
$ bundle exec whenever -w

# remove cron
$ bundle exec whenever -c

```


## routes
* admin始まりのものが管理機能となる
* job始まりのものがバッチ機能となる

## develop
基本的にはslack上でやりとりする。シクレキーなどが入ってくるようなものは別途管理する必要ある

* rails warnを出さないように気をつける→コンソールでwarn表示がないか確認(当然errorはありえない)

## pullrequest
基本的にはpullrequest

```
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── admin
│   │   │   ├── application.js
│   │   │   └── job
│   │   └── stylesheets
│   │       ├── admin
│   │       ├── application.css
│   │       └── job
│   ├── controllers
│   │   ├── admin
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   └── job
│   ├── helpers
│   │   ├── admin
│   │   ├── application_helper.rb
│   │   └── job
│   ├── mailers
│   ├── models
│   └── views
│       ├── admin
│       ├── job
│       ├── layouts
│       └── shared
```

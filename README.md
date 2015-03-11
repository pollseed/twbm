#twbm
---
## how to use
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

```
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── admin
│   │   │   │   └── manage.coffee
│   │   │   ├── application.js
│   │   │   └── job
│   │   │       ├── follow.coffee
│   │   │       ├── learning.coffee
│   │   │       ├── retweet.coffee
│   │   │       └── twitter.coffee
│   │   └── stylesheets
│   │       ├── admin
│   │       │   └── manage.scss
│   │       ├── application.css
│   │       └── job
│   │           ├── follow.scss
│   │           ├── learning.scss
│   │           ├── retweet.scss
│   │           └── twitter.scss
│   ├── controllers
│   │   ├── admin
│   │   │   └── manage_controller.rb
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   └── job
│   │       ├── follow_controller.rb
│   │       ├── learning_controller.rb
│   │       ├── retweet_controller.rb
│   │       └── twitter_controller.rb
│   ├── helpers
│   │   ├── admin
│   │   │   └── manage_helper.rb
│   │   ├── application_helper.rb
│   │   └── job
│   │       ├── follow_helper.rb
│   │       ├── learning_helper.rb
│   │       ├── retweet_helper.rb
│   │       └── twitter_helper.rb
│   ├── mailers
│   ├── models
│   │   └── concerns
│   └── views
│       ├── admin
│       │   └── manage
│       ├── job
│       │   ├── follow
│       │   ├── learning
│       │   ├── retweet
│       │   └── twitter
│       └── layouts
│           └── application.html.erb
```

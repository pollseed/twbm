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

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# ログは絶対取りたいので、devnullとかなし
set :output, "/log/whenever.log"

every 10.minutes do
  rake "twitter:tweet"
end

# 以下はメモ。今後追加する時に
# every 4.days do
#   runner "MyModel.some_method" →rails内のメソッド実行するならこれ使って→なのでbot追加処理とかはこういうの定義してもいいかも
#   command "/usr/bin/some_great_command" →bashコマンド実行するならこれかな,linuxの/usr/bin以下にshellを置いておく必要あり
# end

# Learn more: http://github.com/javan/whenever

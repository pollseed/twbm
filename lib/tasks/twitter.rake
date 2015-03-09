require 'twitter'

namespace :twitter do
  desc 'do tweet'
  task :tweet => :environment do
    CONSUMER_KEY = 'hogehoge'
    CONSUMER_SECRET = 'hogehoge'
    ACCESS_TOKEN = 'hogehoge-hogehoge'
    ACCESS_TOKEN_SECRET = 'hogehoge'

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = CONSUMER_KEY
      config.consumer_secret = CONSUMER_SECRET
      config.access_token = ACCESS_TOKEN
      config.access_token_secret = ACCESS_TOKEN_SECRET
    end

    tweet = 'test tweet'
    client.update(tweet)

    def update(tweet)
      begin
        tweet = (tweet.length > 140) ? tweet[0..139].to_s : tweet
        Twitter.update(tweet.chomp)
      rescue => e
        Rails.logger.error ' twbm error '
      end
    end
  end
end

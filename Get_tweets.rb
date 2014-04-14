
require 'twitter'

# Authentication details from twitter, your starting
# point is here: https://dev.twitter.com/apps/new
client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "XXXXXXXXXXXXXXXXXXXX"
  config.consumer_secret = "XXXXXXXXXXXXXXXXXXXX"
end

# twitter handle to get tweets for
the_twitter_handle = "justwes"

# go through each tweet and print out the text
client.user_timeline(the_twitter_handle).take(10).collect do |tweet|
    puts tweet.text
    
end; nil

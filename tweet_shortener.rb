# Write your code here.
def dictionary
  dictionary = {
   "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "be" =>"b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_to_a = tweet.split()
  short_tweet = []
  tweet_to_a.collect do |word|
    dictionary.each do |key, value| 
      if word == key 
      word = value 
      end
    end
    short_tweet.push(word)
  end   
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


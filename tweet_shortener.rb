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
  dictionary
end

def word_substituter(tweet)
  short_tweet = []
  tweet.split.collect do |word|
    dictionary.each do |key, value| 
      if word.downcase == key 
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

def selective_tweet_shortener(tweet)
    if tweet.length > 140 
    word_substituter(tweet)
    else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet).length
    if  tweet > 140
    tweet[0..136] + "..."
    else 
    tweet
  end
end 

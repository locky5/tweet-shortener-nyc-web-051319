# Write your code here.

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
    tweet.split(" ").collect do |word| # "Hello there" --> ["Hello", "there"]
      if dictionary.keys.include?(word.downcase) # is the word a key?
        word = dictionary[word.downcase] # replace word with value
      else
        word # if not, do not replace word
      end
    end.join(" ") # ["Hi", "there"] --> "Hi there"
  end
  
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet) # only takes a single string as arg.
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140 # chars makes array --> str
    truncated_tweet = word_substituter(tweet).chars[0..136].push("...").join
  else
    word_substituter(tweet)
  end
end
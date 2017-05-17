# Write your code here.
def word_substituter(str)

  @dictionary = {
  
    "hello" => 'hi',
    "to" => '2' ,
    "two" => '2' ,
    "too" => '2' ,
    "for" => '4', 
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
  
  newstr = ''
  str.split(' ').each do |x|
    newstr += (@dictionary.keys.include?(x.downcase) ? @dictionary[x.downcase] : x) + ' '
  end
  newstr[0..-2]
end

def bulk_tweet_shortener(arr)
  arr.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(str)
  str.length > 140 ? word_substituter(str) : str
end

def shortened_tweet_truncator(str)
  str.length > 140 ? (str[0..136] + '...') : str
end
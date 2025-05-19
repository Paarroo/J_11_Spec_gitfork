def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  times = times.to_i
  return str if times <= 1
  
  ("#{str} " * times).strip
end

def start_of_word(word, n)
  word[0, n]
end

def first_word(sentence)
  sentence.split(" ").first
end

def titleize(title)
  title.split.map.with_index { |word, index|
    if index == 0 || word.length > 3
      word.capitalize
    else
      word.downcase
    end
  }.join(" ")
end
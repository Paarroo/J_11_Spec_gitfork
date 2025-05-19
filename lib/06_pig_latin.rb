def translate(phrase)
  phrase.split.map do |word|
    if word.match(/\A[aeiouAEIOU]/)
      word + "ay"
    else
      index = 0
      if word.downcase.start_with?('sch')
        index = 3
      elsif word.downcase.start_with?('qu')
        index = 2
      else
        while index < word.length
          if word[index..index+1].downcase == 'qu'
            index += 2
            break
          elsif word[index].match(/[aeiouAEIOU]/)
            break
          else
            index += 1
          end
        end
      end

      word[index..-1] + word[0...index] + "ay"
    end
  end.join(" ")
end

def who_is_bigger(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "nil detected"
  elsif a > b && a > c
    "a is bigger"
  elsif b > a && b > c
    "b is bigger"
  elsif c > a && c > b
    "c is bigger"
  else
    "a,b,c are equal"
  end
end



def reverse_upcase_noLTA(str)
  str.gsub(/[LTA]/i, '').upcase.reverse
end


def array_42(array)
  array.include?(42) # dirext true or false instead of if/else
end



def magic_array(a) a.flatten.map{|n|n*2}.reject{|n|n%3==0}.uniq.sort end

# code = "a.flatten.map{|n|n*2}.reject{|n|n%3==0}.uniq.sort"
# puts code.length 
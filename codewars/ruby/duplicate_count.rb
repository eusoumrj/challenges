def duplicate_count(text)
# lower case and convert to array
  txt = text.downcase.split("")
  hash = {}
  accum = 0
# count the letters in the array
  txt.length.times do |i|
    if hash[txt[i]] == nil
      hash[txt[i]] = 1
    else
      hash[txt[i]] += 1
    end
  end

# count the letter occurrances
  hash.each_value {|v| accum += 1 if v > 1}

# count the repeats
  pairs = Hash[hash.select{|k, v| v > 1}]
  return pairs.length
end

puts "Digite uma sequencia de caracteres: "
text = gets
puts duplicate_count(text)

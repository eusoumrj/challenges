def duplicate_count(text)
    ('a'..'z').count { |c| text.downcase.count(c) > 1}
end

def duplicate_count(text)
    arr = text.downcase.split("")
    arr.uniq.count { |n| arr.count(n) > 1 }
end

def duplicate_count(text)
    hsh = Hash.new(0)
    text.downcase.chars.each{|c| hsh[c] += 1}
    hsh.values.count {|k| k > 1}
end

def duplicate_count(text)
    text.scan(/(\w)(?=(?!.*\1.*\1).*\1)/i).length
end

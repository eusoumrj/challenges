def getCount(inputStr)
    inputStr.scan(/[aeiou]/i).size
end

def getCount(inputStr)
    inputStr.count("aeiou")
end

def getCount(inputStr)
    vogals = ["a", "e", "i", "o", "u"]
    count = 0
    inputStr.chars.each do |letter|
        if vogals.include? letter
            count += 1
        end
    end
    count
end



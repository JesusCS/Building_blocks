def jesus(string, shift)
    cipher = ""
    string.each_char do |letter|
        # puts letter
        if isAlpha? letter
            letterCase = ""
            if isLower? letter
                letterCase = "a"
            else
                letterCase = "A"
            end
                cipher << ((((letter.ord - letterCase.ord) + shift) % 26) + letterCase.ord).chr
        else
            cipher << letter
        end
    end
    cipher
end

def isAlpha? c
    c.downcase >= 'a' && c.downcase <= 'z'
end

def isLower? c
    c >= 'a' && c <= 'z'
end

puts jesus("What a string!", 5)

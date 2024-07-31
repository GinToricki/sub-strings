dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
    values = Hash.new(0)
    string = string.downcase
    words = string.split(/[^[[:word:]]]+/)
    words.each do |w|
        dict.each do |word|
            if w.include? word
                if values.has_key?(word)
                    values[word] += 1
                else
                    values[word] = 1
                end
            end
        end
    end
    puts values
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
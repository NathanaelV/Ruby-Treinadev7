class Chars
    def unique_quantity(text)
        word = text.split
        count = 0
        word.each do |w|
            count += w.split('').uniq.length
        end
        count
    end
end

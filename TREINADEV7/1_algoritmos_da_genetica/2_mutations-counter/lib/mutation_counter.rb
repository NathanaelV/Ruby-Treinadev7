class MutationCounter
    def calculate(dna_collection)
        maior = 0
        dna_collection.each do |cada|
            m = diferença(cada[0], cada[1])
            if m > maior
               maior = m
            end
        end
        maior
    end

    def diferença(first, second)
        first = first.chars
        second = second.chars
        count = 0
        first.each_with_index do |fd, fi|
            second.each_with_index do |sd, si|
                if fi == si
                    if fd != sd
                        count += 1
                    end
                end
            end
        end
        count
    end
end

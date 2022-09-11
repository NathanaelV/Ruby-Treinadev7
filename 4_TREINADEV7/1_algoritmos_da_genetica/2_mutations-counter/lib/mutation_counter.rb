class MutationCounter
    def calculate(array_strands)
        maior = 0
        array_strands.each do |strands|
            count = count_error(strands)
            if count > maior
                maior = count
            end
        end
        maior
    end


    private

    def count_error(strands)
        count = 0
        (0..(strands.first.length-1)).each do |i|
            if strands.first[i] != strands.last[i]
                count += 1
            end
        end
        count
    end
end
  
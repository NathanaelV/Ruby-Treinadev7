class RockPaperScissors
    attr_accessor :resultado
    def play(actions)
        count_a = 0
        count_b = 0
        count_e = 0
        arr = actions.split("\n").map! { |x| x.split(" vs ")}
        arr.each do |j|
            joga_a = j[0]
            joga_b = j[1]

            if joga_a.downcase == 'tesoura'
                if joga_b.downcase == 'papel'
                    count_a += 1
                elsif joga_b.downcase == 'pedra'
                    count_b += 1
                else
                    count_e += 1
                end
            elsif joga_a.downcase == 'pedra'
                if joga_b.downcase == 'tesoura'
                    count_a += 1
                elsif joga_b.downcase == 'papel'
                    count_b += 1
                else
                    count_e += 1
                end
            elsif joga_a.downcase == 'papel'
                if joga_b.downcase == 'pedra'
                    count_a += 1
                elsif joga_b.downcase == 'tesoura'
                    count_b += 1
                else
                    count_e += 1
                end
            end
        end
        if count_b == 0
            "Jogador A: #{count_a}"
        elsif count_a == 0
            "Jogador B: #{count_b}"
        elsif count_e == 0
            "Jogador A: #{count_a} | Jogador B: #{count_b}"
        else
            "Empates: #{count_e} | Jogador A: #{count_a} | Jogador B: #{count_b}"
        end
    end
end

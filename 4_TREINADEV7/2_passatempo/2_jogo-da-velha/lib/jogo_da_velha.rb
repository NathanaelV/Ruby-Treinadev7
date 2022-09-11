class JogoDaVelha
    
    def play(actions)
        velha = Array.new(3) {Array.new(3)}
        arr = actions.split("\n").map! { |x| x.split("->")}
        count_o = 0
        count_x = 0
        count_e = 0

        arr.each do |j|
            string = j[0]
            num = j[1].split(',').map! {|a| a.to_i}

            velha[num[0]].delete_at(num[1])
            velha[num[0]].insert(num[1], string)

            count_vazio = 0 # Reinicia o contador de array vazio
            velha.each do |elemento|
                if elemento.count('X') == 3
                    count_x += 1 # Conta vitória de X
                    velha = Array.new(3) {Array.new(3)} # Começa um novo jogo

                elsif elemento.count('O') == 3
                    count_o += 1 # Conta vitória do O
                    velha = Array.new(3) {Array.new(3)}

                elsif elemento.count(nil) == 0
                    count_vazio += 1 # Quantos arrays estão 100% completo
                    if count_vazio == 3
                        count_e += 1 # Conta os empates
                        velha = Array.new(3) {Array.new(3)}
                    end
                end
            end
        end

        if count_e >= count_o
            if count_e >= count_x
                return 'Empate'
            else
                return "X venceu com #{count_x} vitórias"
            end
        elsif count_o > count_x
            return "O venceu com #{count_o} vitórias"
        elsif count_o == count_x
            return 'Empate'
        else
            return "X venceu com #{count_x} vitórias"
        end
    end 
end
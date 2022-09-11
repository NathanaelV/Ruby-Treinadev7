class Connect4
    def play(actions)

        arr = actions.split("\n")
        tabuleiro = Array.new(8) {Array.new}
        rodada = 0

        arr.each do |j|
            rodada += 1
            tabuleiro[(j[-1].to_i)-1] << j[0]
        
            # Identifica se ganhou pela coluna
            tabuleiro.each_with_index do |coluna, i|
                col_o = 0
                col_x = 0
                coluna.each do |col|
                    if col == 'X'
                        col_x += 1
                        col_o = 0
                        if col_x == 4
                            return "Venceu X na rodada #{rodada}, na coluna #{i+1}"
                        end
                    elsif col == 'O'
                        col_o += 1
                        col_x = 0
                        if col_o == 4
                            return "Venceu O na rodada #{rodada}, na coluna #{i+1}"
                        end
                    end
                end   
            end
        
            # Identificar se ganhou pela linha

            arr_coluna = Array.new(8) {|i| i}
            arr_coluna.each do |row|
                row_x = 0
                row_o = 0
                arr_linha = Array.new(8) {|i| i}
                arr_linha.each do |col|
                   
                    if tabuleiro[col][row] == 'X'
                        row_x += 1
                        row_o = 0
                        if row_x == 4
                            return "Venceu X na rodada #{rodada}, na linha #{8 - row}"
                        
                        end
                    elsif tabuleiro[col][row] == 'O'
                        row_o += 1
                        row_x = 0
                        if row_o == 4
                            return "Venceu O na rodada #{rodada}, na linha #{8 - row}"
                            
                        end
                    elsif tabuleiro[col][row] == nil
                        row_o = 0
                        row_x = 0
                    end
                end
            end
        end
    end  
end
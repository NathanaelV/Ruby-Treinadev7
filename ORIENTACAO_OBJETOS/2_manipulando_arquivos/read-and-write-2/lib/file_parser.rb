class FileParser
    def to_binario(decimal)
        decimal.to_s(2)
    end

    def tratamento(num)
        arr = num.split(';')
        arr.map! { |n| n.to_i.to_s(2) }
    end

    def to_binary_file(conteudo)
        file = File.open('data/data.txt', "w+")
        file.puts tratamento(conteudo)
        file.close
    end
end

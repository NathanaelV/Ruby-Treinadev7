class FileParser
    def to_integer(binario)
        binario.to_i(2)
    end

    def convert(file_path)
        file = File.open(file_path)
        count = 0
        file.each do |bi|
            count += bi.to_i(2)
        end
        count
    end
end

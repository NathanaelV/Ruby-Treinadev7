class FileParser
  def to_integer(binario)
    binario.to_i(2)
  end

  def convert(file_path)
    file = File.read(file_path)
    file = file.split
    file.map! do |binario|
      binario.to_i(2)
    end
    file.sum
  end
end

class FileParser
  def to_binary_file(list_numbers)
    list_numbers = list_numbers.split(';')
    list_numbers.map! { |n| n.to_i }
    File.open('data/data.txt', 'w') do |file|
      list_numbers.map! do |number|
        file.puts number.to_s(2)
      end
    end
  end
end

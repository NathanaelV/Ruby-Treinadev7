class StringUtils
  def wavefy(string)

    phrase = string.downcase
    word = []

    phrase.each_char.with_index do |ch, i|
      if i % 2 == 1
          ch = ch.upcase
      end
      word << ch
    end

    word.join
    
  end
end

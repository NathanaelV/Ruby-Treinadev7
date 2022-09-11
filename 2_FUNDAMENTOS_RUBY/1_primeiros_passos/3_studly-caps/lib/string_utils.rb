class StringUtils
  def wavefy(string)
    string.downcase!
    string.each_char.with_index do |ch, i|
      if i.odd?
        string[i] = ch.upcase
      end
    end
  end
end

class Word
  def vowels_count(phrase)
    phrase.downcase.parameterize.count('aeiouy')
  end

  def consonants_count(phrase)
    vowels = phrase.downcase.count('aeiouyáãéú')
    rest = phrase.count(' .,;:0123')
    phrase.length - vowels - rest
  end
end

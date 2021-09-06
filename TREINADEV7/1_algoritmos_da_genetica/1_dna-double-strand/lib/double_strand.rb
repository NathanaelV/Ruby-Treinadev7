class DoubleStrand
  def complementary_strip(dna)
      dna = dna.chars
      dna.each_with_index do |l, i|
          if l == 'A'
              dna[i] = 'T'
          elsif l == 'T'
              dna[i] = 'A'
          elsif l == 'G'
              dna[i] = 'C'
          elsif l == 'C'
              dna[i] = 'G'
          end
      end
      dna = dna.join
      dna
  end
end

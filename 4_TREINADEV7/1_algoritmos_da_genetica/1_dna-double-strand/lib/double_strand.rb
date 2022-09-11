class DoubleStrand
  def complementary_strip(dna_code)
    gene = {'A'=>'T', 'T'=>'A', 'G'=>'C', 'C'=>'G'}
    dna_code.gsub(/\w/, gene)
  end
end

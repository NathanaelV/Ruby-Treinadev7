class RnaSplicer
  def splice(rna, introns)
    introns.each do |tira|
      rna.sub!(tira, '')
    end
    rna
  end
end

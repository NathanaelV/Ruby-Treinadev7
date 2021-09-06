class RnaSplicer
  def splice(rna, introns)
    introns.each do |tira|
        b = tira.length
        a = rna.index(tira)
        rna[a..(a+b-1)] = ''
    end
    rna
  end
end

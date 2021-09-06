class RnaPolymerase
    def transcribe(dna, beginning, ending)
        inicio = dna.index(beginning)
        dna = dna[inicio..]
        fim = dna.index(ending)
        unless inicio && fim
            return 'Sequence not found'
        end
        if beginning == "" || ending  == ""
            return 'Sequence not found'
        end

        gene = dna[(beginning.length)..(fim-1)]
        dnacode = {'A'=> 'U','T'=> 'A','G'=> 'C','C'=> 'G' }
        gene.gsub(/\w/, dnacode)
    end
end

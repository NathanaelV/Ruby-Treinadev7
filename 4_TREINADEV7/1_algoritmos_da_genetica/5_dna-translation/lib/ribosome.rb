class Ribosome
    def translate(rna_messenger)

        dnacode = {'A'=> 'U','U'=> 'A','G'=> 'C','C'=> 'G' }
        rna_transp = rna_messenger.gsub(/\w/, dnacode)

        amino = {"UCA"=> "aa1-", 'AAC'=> 'aa2-', 'UUU'=> 'aa3-',
                 'AAA'=> 'aa4-', 'AUC'=> 'aa5-', 'CCA'=> 'aa6-',
                 'GGU'=> 'aa7-', 'GCC'=> 'aa8-',}
        aminoacido = rna_transp.gsub(/\w{3}/, amino)
        
        if aminoacido.split('-').join.length != rna_messenger.length
            return 'Translation aborted'
        end

        aminoacido[-1] = ''
        aminoacido

    end
end

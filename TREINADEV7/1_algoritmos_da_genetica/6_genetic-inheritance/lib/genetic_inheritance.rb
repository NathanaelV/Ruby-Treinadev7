class GeneticInheritance
    def predict_proportions(first_individual, second_individual)

        first = first_individual.split('')
        second = second_individual.split('')

        gene = []  
        first.each do |prim|
            second.each do |sec|
                g = []
                g << prim << sec
                gene << g.sort.join
            end
        end

        fracao = []
        gene.each do |g|
            f = []
            f << g << (gene.count(g))/4.to_r
            fracao << f
        end
        fracao.uniq 

    end
end

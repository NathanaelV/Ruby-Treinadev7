class Arrays
  def self.multiplica_antecessor_predecessor(array)

    resp = []
    n = array.length
    (0..n-1).each do |a|
        if a == 0
            resp << array[0] * array[1]
        elsif a == n-1
            resp << array[a-1] * array[a]
        else
            resp << array[a-1] * array[a+1] 
        end
    end
    resp

  end
end

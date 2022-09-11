class BinaryCounter
  def read(num)
    arr_bi = num.split('-')
    arr_bi.map! { |a| a.to_i }
    arr_bi.map! { |a| a.to_s(2) }

    ultimo = arr_bi[-1]
    r = []
    arr_bi.each do |ultimo|
        count = 0
        m = 0
        ultimo.each_char do |ch|
            if ch == ultimo[-1]
                count += 1
                if count > m
                    m = count
                end
            else
                count = 0
            end
        end
        r << m.to_s
    end
    r.join
  end
end


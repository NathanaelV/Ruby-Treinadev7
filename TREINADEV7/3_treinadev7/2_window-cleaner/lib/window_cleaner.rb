class WindowCleaner
  def clean(levels, wind, coordinates)
    coordinates = coordinates.split("\n")
    count = 0 

    coordinates.each do |cord|
      h = Array(0..levels-1)
      c = Array(0..wind-1)
      l = levels
      w = wind

      cord.each_char do |cor| 
          if cor == 'B'
              l = l / 2 
              h = h[0..l-1]
          elsif cor == 'T'
              l = l / 2
              h = h[l..-1]
          elsif cor == 'E'
              w = w / 2
              c = c[0..w-1]
          elsif cor == 'D'
              w = w / 2
              c = c[w..-1]
          end
      end

      if (c+h).sum.even?
          count += 1
      end
      
    end
    count
  end
end

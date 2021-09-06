class LargestInteger
  def find(array)
    array.map do |arr|
      arr.map(&:to_s).sort { |a, b| b+a <=> a+b }.join.to_i
    end
  end
end
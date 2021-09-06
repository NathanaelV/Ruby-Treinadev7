class Numbers
  def sum_text(numbers_text)
    array = numbers_text.split("\n")
    array.map! { |n| n.to_i }
    array.sum
  end
end

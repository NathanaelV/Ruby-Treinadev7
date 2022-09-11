class Sudoku
  def check(list)
    (1..9).to_a == list.sort
  end
end

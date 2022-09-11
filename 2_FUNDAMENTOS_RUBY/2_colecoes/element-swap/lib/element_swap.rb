class ElementSwap
  def switch(letters, instructions)
    arr = instructions.split

    arr.each do |z|
        a = z[0].to_i
        b = z[-1].to_i
        letters[a], letters[b] = letters[b], letters[a]
    end

    letters
  end
end

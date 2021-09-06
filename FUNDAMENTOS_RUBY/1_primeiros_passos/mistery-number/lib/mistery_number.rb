class MisteryNumber
  def calculate(operation)
    equation = operation.split.join
    array = equation.split('=')

    index1 = equation.index("*").to_i
    index2 = equation.index("?").to_i
    index = index2 - index1
    index = (index).abs

    if index == 1
        result = array[1].to_i
        resp = 1
        attempt = 0
    
        while attempt != result do
            resp += 1
            string = array[0].gsub('?', resp.to_s)
            attempt = eval string
        end
    else
        equation = array[0].gsub('?', '0')
        trans = eval equation
        trans = trans.to_i
        resp = array[1].to_i - trans
    end
    resp
  end
end

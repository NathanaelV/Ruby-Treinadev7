class Finder
  def index_of(list, value)
    resp = []
    list.each_with_index do |element, i|
        if element.include?(value)
            resp << i
        end
    end
    resp
  end
end

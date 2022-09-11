class Finder
  def index_of(list, value)
    resp = []
    list.each_with_index do |element, i|
      resp << i if element.include?(value)
    end
    resp
  end
end

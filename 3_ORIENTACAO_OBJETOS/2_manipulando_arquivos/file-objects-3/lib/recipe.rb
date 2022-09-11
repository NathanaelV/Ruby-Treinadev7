class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured: true)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(file_path)
    file = File.read(file_path)
    arr = JSON.parse(file)
    if arr.class == Array
      arr.map do |hash|
        Recipe.new(title: hash['title'],
                   description: hash['description'],
                   ingredients: hash['ingredients'],
                   cook_time: hash['cook_time'],
                   featured: hash['featured'])
      end
    else
      hash = arr
      Recipe.new(title: hash['title'],
        description: hash['description'],
        ingredients: hash['ingredients'],
        cook_time: hash['cook_time'],
        featured: hash['featured'])
    end
  end

  def save_to_file
    hash = {}
    hash['title'] = @title
    hash['description'] = @description
    hash['ingredients'] = @ingredients
    hash['cook_time'] = @cook_time
    hash['featured'] = @featured
    File.open('data/recipe.json', 'w') do |file|
      file.print hash.to_s.gsub('=>', ':').gsub(", \"", ",\"")
    end # File closed
  end
end
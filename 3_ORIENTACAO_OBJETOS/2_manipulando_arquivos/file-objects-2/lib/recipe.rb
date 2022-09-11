class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(file_path)
    file = File.read(file_path)
    hash = JSON.parse(file)
    Recipe.new(title: hash['title'],
               description: hash['description'],
               ingredients: hash['ingredients'],
               cook_time: hash['cook_time'],
               featured: hash['featured'])
  end

  def save_to_file
    # hash = {}
    # hash['title'] = @title
    # hash['description'] = @description
    # hash['ingredients'] = @ingredients
    # hash['cook_time'] = @cook_time
    # hash['featured'] = @featured
    # File.open('data/recipe.json', 'w+') do |file|
    #   file.puts hash.to_s.gsub('=>', ':')
    # end # File closed
  end
end

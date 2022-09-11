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
    file_hash = JSON.parse(file)
    Recipe.new(title: file_hash['title'],
               description: file_hash['description'],
               ingredients: file_hash['ingredients'],
               cook_time: file_hash['cook_time'],
               featured: file_hash['featured'])
  end
end
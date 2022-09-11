class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured:)
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
        hash_to_object(hash)
      end
    else
      hash_to_object(arr)
    end
  end

  def save_to_file
    hash = { 'title'=>@title, 'description'=>@description,
             'ingredients'=>@ingredients, 'cook_time'=>@cook_time,
             'featured'=>@featured }
    File.open('data/recipe.json', 'w+') do |file|
      file.print hash.to_s.gsub(", \"", ",\"").gsub('=>', ':')
    end
  end


  private

  def self.hash_to_object(hash)
    Recipe.new(title: hash['title'],
               description: hash['description'],
               ingredients: hash['ingredients'],
               cook_time: hash['cook_time'],
               featured: hash['featured'])
  end
end
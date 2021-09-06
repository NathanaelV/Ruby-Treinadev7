require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    if attributes.class == Array
      trata_array(attributes)
    else
      Recipe.new(title: attributes['title'],
                description: attributes['description'],
                ingredients: attributes['ingredients'],
                cook_time: attributes['cook_time'],
                featured: attributes['featured'])
    end
  end

  def self.trata_array(lista_receitas)
    lista_receitas.map do |lista|
      Recipe.new(title: lista['title'],
               description: lista['description'],
               ingredients: lista['ingredients'],
               cook_time: lista['cook_time'],
               featured: lista['featured'])
    end
  end


  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end


class Recipe
    attr_accessor :title, :description, :ingredients, :cook_time, :featured
    
    def initialize(title:, description:, ingredients:, cook_time: ,featured:)
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end

    def self.from_json(file_path)
        hash = JSON.parse(File.read(file_path))
        Recipe.new(title: hash["title"], 
                    description: hash["description"],
                    ingredients: hash["ingredients"], 
                    cook_time: hash["cook_time"],
                    featured: hash["featured"])
    end
end

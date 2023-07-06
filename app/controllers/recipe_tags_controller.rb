class RecipeTagsController < ApplicationController
    def create
        recipetag = RecipeTag.create!(recipe_tag_params)
        render json: recipetag, status: :created
        
    end

    def index
        recipetag = RecipeTag.all
        render json: recipetag, status: :ok
    end
    
    private
    
    def recipe_tag_params
        params.permit(:recipe_id, :tag_id)
    end
end

class RecipesController < ApplicationController
    def index
        # if session.include? :user_id
        recipes = Recipe.all
        render json: recipes, include: :tags
    # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized
    # end
    end

    def show
    # if session.include? :user_id
        recipe = find_recipe
        if recipe
          render json: recipe
        else
          render json: {error: "Recipe not found"}, status: :not_found
        end
    # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized  
    # end
    end

    def update
    # if session.include? :user_id

        recipe = find_recipe
        if recipe
            recipe.update!(recipe_params)
            render json: recipe
        else
            render json: {error: "Recipe not found"}, status: :not_found
        end
    end
      # else
    #     render json: {errors: ["You are not logged in"]}, status: :unauthorized  
    # end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.valid?
            render json: recipe, status: :created
        else
            render json: {error: 'Invalid recipe'}, status: :unprocessable_entity
        end

    end

    def create
        recipe = Recipe.create(recipe_params)
        if recipe.valid?
            render json: recipe, status: :created
        else
            render json: {error: "Failed to create recipe"}, status: :unprocessable_entity
        end

    end



    private

    def find_recipe
        Recipe.find_by(id: params[:id])
    end
    
    def recipe_params
        params.permit(:title, :description, :procedure, :user_id, :image_url)
    end

    
end

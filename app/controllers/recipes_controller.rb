class RecipesController < ApplicationController
	def index
	    @recipe = Recipe.all
	  end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
 
  		if @recipe.save
  			redirect_to @recipe
  		else
  			render 'new'
  		end	
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy

		redirect_to recipes_path
	end

	private
  		def recipe_params
    		params.require(:recipe).permit(:title, :category, :preptime, :ingredients, :directions, :calories, :fats, :carbs, :protein)
  		end

end

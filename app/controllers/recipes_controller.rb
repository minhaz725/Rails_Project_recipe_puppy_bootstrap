class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] || 'chocolate'#params[:looking_for] || 'cat in the hat'
    @recipes = Recipe.for(@search_term)
  end
end

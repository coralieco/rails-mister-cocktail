class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def create
  end

  def new
  end
end

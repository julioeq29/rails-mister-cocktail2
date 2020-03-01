class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end
end

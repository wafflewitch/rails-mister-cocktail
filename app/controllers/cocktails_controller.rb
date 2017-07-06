class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show, :edit, :update, :destroy ]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = sort_doses(@cocktail.doses.as_json)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_path, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


  def sort_doses(doses)
    # @doses.sort! {|a, b| a.description <=> b.description }
    doses.each_with_index do |dose, id|
      found_index = Dose::DOSES.find_index { |desc| desc == dose["description"] }
      unless found_index = doses.length
        compare_index = Dose::DOSES.find_index { |desc| desc == doses[(id + 1)]["description"]}
        if found_index > compare_index
          doses[id], doses[id + 1] = doses[id + 1], doses[id]
        end
      end
    end
    return doses
  end
end

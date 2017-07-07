class ReviewsController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :index]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save!
    redirect_to cocktails_path
  end

  def show
    @review = Review.find(params[:id])
  end

  def index
    @reviews = Review.where(cocktail_id: @cocktail.id)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.required(:review).permit(:content)
  end
end

# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id].to_i)
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id].to_i)
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end

class ToursController < ApplicationController
  before_action :set_tour, only: %i(edit update destroy add_rating book)

  def index
    filter = params[:filter] ||= 'date_of_creation'
    @tours = Tour.includes(:ratings).where(nil).send(filter)
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to tours_path
      flash[:success] = 'Tour created successfully'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tour.update_attributes(tour_params)
      redirect_to tours_path
      flash[:success] = 'Tour updated successfully'
    else
      render :edit
    end
  end

  def add_rating
    rating = @tour.ratings.new(rating_params)
    if rating.save
      redirect_to tours_path
    else
    end
  end

  def book
    book = @tour.bookings.new(booking_params)
    if book.save
      # Notification to Guide to be implemented
      redirect_to tours_path
    else
    end
  end

  def destroy
    if @tour.destroy
      redirect_to tours_path
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :description, :location, :start_date, :end_date, :photo, :guide_id)
  end

  def rating_params
    params.permit(:stars, :comment, :user_id, :rateable_id, :rateable_type)
  end

  def booking_params
    params.permit(:user_id, :number_of_people, :contact_email)
  end

  def set_tour
    @tour = Tour.find(params[:id])
  end
end

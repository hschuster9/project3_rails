class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: @activities
  end

  def show
    @activity = Activity.find(params[:id])
    render json: @activity

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save!
      render json: @activity, status: :created, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end

  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update!(activity_params)
      render json: @activity, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
  end

private
  def activity_params
    params.require(:activity).permit(:name, :location, :date, :blurb, :time, :price)
  end

end

class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: @activities

    # respond_to do |format|
    #   format.html { render :index}
    #   format.json { render json: @activities }
    # end
  end

  def show
    @activity = Activity.find(params[:id])
    render json: @activity
    # respond_to do |format|
    #   format.html { render :show}
    #   format.json { render json: @activity }
    # end
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
    # respond_to do |format|
    #   if @activity.save!
    #     format.html { redirect_to @activity, notice: "Activity was created"}
    #     format.json { render json: @activity, status: :created, location: @activity }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @activity.errors, status: :unprocessable_entity }
    #   end
    # end
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

    # respond_to do |format|
    #   if @activity.update!(activity_params)
    #     format.html { redirect_to @activity, notice: "Activity was updated"}
    #     format.json { render json: @activity, location: @activity }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @activity.errors, status: :unprocessable_entity }
    #   end
    # end
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

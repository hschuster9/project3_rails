class PeopleController < ApplicationController

  def index
    @activity = Activity.find(params[:activity_id])
    @people = @activity.people
    render json: @people
  end

  def show
    @person = Person.find(params[:id])
    render json: @person
  end


  def create
    @activity = Activity.find(params[:activity_id])
    @person = @activity.people.build(person_params)

    if @person.save!
      render json: @person, status: :created, location: @person
      render json: {message: "success"}, status: :ok
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update!(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    render json: {message: "success"}, status: :ok
  end

private
  def person_params
    params.require(:person).permit(:name)
  end

end

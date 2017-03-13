class PeopleController < ApplicationController

  def index
    @activity = Activity.find(params[:activity_id])
    @people = @activity.people
    render json: @people

  end

  def create
    @activity = Activity.find(params[:activity_id])
    @person = @activity.people.create(person_params)

    if @person.save!
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end

  end

  def update
    @person = Person.find(params[:id])

    if @person.update!(person_params)
      render json: @person, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy


  end

private
  def person_params
    params.require(:person).permit(:name)
  end

end

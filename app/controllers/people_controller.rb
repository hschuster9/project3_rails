class PeopleController < ApplicationController

  def index
    @people = Person.all
    render json: @people
    # respond_to do |format|
    #   format.html { render :index}
    #   format.json { render json: @people }
    # end
  end

  def show
    @person = Person.find(params[:id])
    render json: @person

    # respond_to do |format|
    #   format.html { render :show}
    #   format.json { render json: @person }
    # end
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save!
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end

    # respond_to do |format|
    #   if @person.save!
    #     format.html { redirect_to @person, notice: "Person was created"}
    #     format.json { render json: @person, status: :created, location: @person }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @person.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update!(person_params)
      render json: @person, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end

    # respond_to do |format|
    #   if @person.update!(person_params)
    #     format.html { redirect_to @person, notice: "Person was updated"}
    #     format.json { render json: @person, location: @person }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @person.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

private
  def person_params
    params.require(:person).permit(:name)
  end

end

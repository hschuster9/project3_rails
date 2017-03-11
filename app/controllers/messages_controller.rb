class MessagesController < ApplicationController

  def index
    @messages = Message.all

    respond_to do |format|
      format.html { render :index}
      format.json { render json: @messages }
    end
  end

  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html { render :show}
      format.json { render json: @message }
    end
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save!
        format.html { redirect_to @message, notice: "Message was created"}
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update!(message_params)
        format.html { redirect_to @message, notice: "Message was updated"}
        format.json { render json: @message, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to message_path
  end

private
  def message_params
    params.require(:message).permit(:author, :content)
  end

end
class MessagesController < ApplicationController

  def index
    @activity = Activity.find(params[:activity_id])
    @messages = @activity.messages
    render json: @messages
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  # def new
  #   @message = Message.new
  # end

  def create
    @activity = Activity.find(params[:activity_id])
    @message = @activity.messages.build(message_params)

    if @message.save!
      render json: @message, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # def edit
  #   @message = Message.find(params[:id])
  # end

  def update
    @message = Message.find(params[:id])
    if @message.update!(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end

  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    render json: {message: "success"}, status: :ok
  end

private
  def message_params
    params.require(:message).permit(:author, :content)
  end

end

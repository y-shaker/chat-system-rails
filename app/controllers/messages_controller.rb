class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show update destroy ]

  # GET /messages
  def index
    @q = Message.ransack(params[:q])
    @message = @q.result
    render json: @message
  end

  # GET /messages/1
  def show
    render json: @message
  end

  

  # POST /messages
  def create
    @message = Message.new(message_params)
    chat = Chat.find(params[:chat_id])
    bool = true
    if ((@message.client_id != chat.client_id) && (@message.client_id != chat.client_2_id))
      bool = false
    end
      


    if @message.save && bool
      render json: @message, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.permit(:body, :chat_id, :client_id)
    end
end

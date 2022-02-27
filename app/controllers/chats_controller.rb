class ChatsController < ApplicationController
    

  
  def index
    @chat = Chat.where(application_token: params[:application_token])

    render json: @chat
  end

  
  def show
    @chat = Chat.find_by(id: params[:id])
    render json: @chat 
  end

  

  
  def create
    @chat = Chat.new(chat_params)
    

    if @chat.save
      render json: @chat, status: :created
    else
      render json: @chat.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @chat.update(chat_params)
      render json: @chat
    else
      render json: @chat.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @chat = Chat.find_by(id: params[:id])
    @chat.destroy

  end

  

  private
    
    def chat_params
      params.permit(:application_token,:id,:client_id, :client_2_id)
    end
end



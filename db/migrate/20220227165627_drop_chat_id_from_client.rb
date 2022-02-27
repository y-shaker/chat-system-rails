class DropChatIdFromClient < ActiveRecord::Migration[7.0]
  def change
    remove_column :clients, :chat_id
  end
end

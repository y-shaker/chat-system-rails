class AddApplicationTokenToChats < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :application_token, :string
    add_index :chats, :application_token
  end
end

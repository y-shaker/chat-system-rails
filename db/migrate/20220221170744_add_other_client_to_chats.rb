class AddOtherClientToChats < ActiveRecord::Migration[7.0]
  def change
    add_reference :chats, :client_2 , foreign_key: { to_table: :clients }

  end
end

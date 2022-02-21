class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|

      t.belongs_to :application, index: { unique: true }, foreign_key: true
      

      t.timestamps
    end
  end
end

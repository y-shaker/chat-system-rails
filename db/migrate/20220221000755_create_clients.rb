class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end

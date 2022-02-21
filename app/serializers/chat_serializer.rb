class ChatSerializer < ActiveModel::Serializer
  attributes :id, :application_token , :client_id , :client_2_id , :messages_count
  has_many :messages
end

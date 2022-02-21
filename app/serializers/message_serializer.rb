class MessageSerializer < ActiveModel::Serializer
  attributes :id , :chat_id , :client_id , :body
  belongs_to :chat
end

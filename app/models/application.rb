class Application < ApplicationRecord
  has_secure_token
  has_many :chats , inverse_of: :application 
  accepts_nested_attributes_for :chats

  def to_param
    token
  end
end

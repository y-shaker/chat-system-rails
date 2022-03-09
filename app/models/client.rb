class Client < ApplicationRecord
  has_many :chat
  validates_presence_of :name
end

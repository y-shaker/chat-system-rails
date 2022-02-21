class Message < ApplicationRecord
  belongs_to :chat , counter_cache: true
  belongs_to :client
end

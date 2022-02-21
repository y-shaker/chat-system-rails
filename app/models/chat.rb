class Chat < ApplicationRecord
  belongs_to :application , counter_cache: true , foreign_key: "application_token" , optional:true
  has_one :client
  has_one :other_client, foreign_key: 'client_id_2', class_name: 'Client'
  has_many :messages 
  

#   before_save :fix_counter_cache, :if => ->(er) { !er.new_record? && er.event_id_changed? }

# private

#   def fix_counter_cache
#     Event.decrement_counter(:chat_count, self.event_id_was)
#     Event.increment_counter(:chat_count, self.event_id)
#   end

end

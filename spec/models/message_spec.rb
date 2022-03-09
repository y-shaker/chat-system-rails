require 'rails_helper'

RSpec.describe Message, type: :model do

  describe "Associations" do
    it { should belong_to(:chat).without_validating_presence }
  end
  
  

end

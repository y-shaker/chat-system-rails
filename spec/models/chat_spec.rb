require 'rails_helper'

RSpec.describe Chat, type: :model do
  
  it "is not valid without a application token" do
    chat = Chat.new(application_token: nil)
    expect(chat).to_not be_valid
  end

  it "is not valid without a first client" do
    chat = Chat.new(client_id: nil)
    expect(chat).to_not be_valid
  end
  
  it "is not valid without a second client" do
    chat = Chat.new(client_2_id: nil)
    expect(chat).to_not be_valid
  end
  
  describe "Associations" do
    it { should belong_to(:application) }
    it { should have_many(:messages) }
    
  end

  describe "Validations" do
    it { should validate_presence_of(:application) }
  end


end



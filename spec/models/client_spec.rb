require 'rails_helper'

RSpec.describe Client, type: :model do

  it "is not valid without a name" do
    client = Client.new(name: nil)
    expect(client).to_not be_valid
  end

end

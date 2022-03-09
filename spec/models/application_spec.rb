require 'rails_helper'

RSpec.describe Application, type: :model do
  it "is not valid without a token" do
    app = Application.new(token: nil)
    expect(app).to_not be_valid
  end
  it "is not valid without a name" do
    app = Application.new(name: nil)
    expect(app).to_not be_valid
  end
end

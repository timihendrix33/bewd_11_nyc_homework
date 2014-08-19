require "rails_helper"

RSpec.describe Friend, :type => :model do
	let(:friend) {Friend.create(name: "heather")}
  it "has a name" do
  	expect(friend.name).to eq "heather"
  end
  
end
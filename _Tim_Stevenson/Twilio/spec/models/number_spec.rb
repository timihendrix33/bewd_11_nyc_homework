require "rails_helper"

RSpec.describe Number, :type => :model do
	let(:friend) {Friend.create(name: "heather")}
	let(:number) {Number.create(phone_number: 12077666419)}
  it "belongs to a friend" do
  	friend.numbers << number
  	expect(friend.numbers.first.phone_number).to eq 12077666419
  end
  
end
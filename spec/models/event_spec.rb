require 'rails_helper'

RSpec.describe Event, type: :model do
  # let(:userod) do
  # Users.create('sacastro@unal.edu.co')
  # end

  describe "i dont know" do
    it "is valid with valid attributes" do
      event_entry = Event.new(name: "lets sse everithig",description: "something",date: date.today,capacity:after =>  column_name, user: nil)
      expect(event_entry).to_not be_valid
    end
    it "is valid with valid attributes" do
      event_entry = Event.new(name: nil, user: nil)
      expect(event_entry).to_not be_valid
    end
  end
end

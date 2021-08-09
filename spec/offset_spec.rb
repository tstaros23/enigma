require './lib/offset'
require './lib/key'
require 'date'

RSpec.describe Offset do
  it "exists" do
    offset = Offset.new

    expect(offset).to be_a(Offset)
  end
  it "has today's date" do
    offset = Offset.new
    allow_any_instance_of(Offset).to receive(:generate_date).and_return(80821)
    expect(offset.generate_date).to eq(80821)
  end
  it "can create an offset" do
    offset = Offset.new

    expect(offset.create_offset(80821)).to eq(
      {
        :A => 4,
        :B => 0,
        :C => 4,
        :D => 1
      }
    )
  end
end

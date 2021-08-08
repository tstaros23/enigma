require './lib/offset'
require './lib/key'
require 'date'

RSpec.describe Offset do
  it "exists" do
    offset = Offset.new

    expect(offset).to be_a(Offset)
  end
  it "can create an offset" do
    offset = Offset.new

    expect(offset.create_offset(40895)).to eq(
      {
        :A => 1,
        :B => 0,
        :C => 2,
        :D => 5
      }
    )
  end
end

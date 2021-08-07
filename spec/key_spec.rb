require './lib/key'
require 'date'

RSpec.describe Key do
  it "exists " do
    key = Key.new

    expect(key).to be_a(Key)
  end
  it "can create keys" do
    key = Key.new

    expect(key.create_keys([1, 2, 3, 4, 5])).to eq(
      {
        :A => 02,
        :B => 27,
        :C => 71,
        :D => 15
      }
    )
  end
end

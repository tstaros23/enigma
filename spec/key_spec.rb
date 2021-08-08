require './lib/key'
require 'date'

RSpec.describe Key do
  it "exists and has attributes" do
    key = Key.new

    expect(key).to be_a(Key)
  end
  it "can create shift keys" do
    key = Key.new

    expect(key.create_shift_keys("02715")).to eq(
      {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }
    )
  end

  it "can create a key" do
    key = Key.new

    allow(key).to receive(:generate_key).and_return("00000")
    expect(key.generate_key).to eq("00000")
  end
end

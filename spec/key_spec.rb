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

    allow_any_instance_of(Key).to receive(:random_index).and_return(0)
    expect(key.generate_key).to eq("00000")
    expect(key.generate_key).to be_a(String)
  end

  it "can create a random index" do
    key = Key.new


    expect(key.random_index).to be_between(0, 9)
  end
end

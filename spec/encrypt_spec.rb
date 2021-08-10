require './lib/offset'
require './lib/key'
require './lib/encrypt'
require 'date'

RSpec.describe Encrypt do
  it "exists" do
    key =   {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }

    offset = {
      :A => 4,
      :B => 0,
      :C => 4,
      :D => 1
    }
    encrypt = Encrypt.new("hello world", key, offset )

    expect(encrypt).to be_a(Encrypt)
  end

  it "can create shifts" do
    key =   {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }

    offset = {
      :A => 4,
      :B => 0,
      :C => 4,
      :D => 1
    }
    encrypt = Encrypt.new("hello world", key, offset )

    expected = {
      :A => 6,
      :B => 27,
      :C => 75,
      :D => 16
    }
    expect(encrypt.create_shifts).to eq(expected)
  end

  it "can encrypt the message" do
    key =   {
        :A => 2,
        :B => 27,
        :C => 71,
        :D => 15
      }

    offset = {
      :A => 4,
      :B => 0,
      :C => 4,
      :D => 1
    }
    encrypt = Encrypt.new("hello world.", key, offset )

    expected = "nefau qdxly."
    expect(encrypt.encrypt).to eq(expected)
  end
end

require './lib/key'
require './lib/offset'

class Encrypt
attr_reader :alphabet, :message, :key, :offset

  def initialize(message, key, offset)
    @alphabet = (("a".."z").to_a << " ")
    @message = message.downcase
    @random_key = key
    @offset = offset
  end


  def create_shifts
      shifts = Hash.new
      @random_key.each do |key, value|
        shifts[key] = value + @offset[key]
      end
      shifts
  end



  def shift_value(index)
    @alphabet.rotate(index)

  end

  def encrypt
  end
end

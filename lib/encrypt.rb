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



  # def shift_value(index)
  #
  #
  # end

  def encrypt
    chars = @message.split("")
    ciphered = ""

    chars.each do |char|
      if @alphabet.include? char
        index = @alphabet.index(char)
        shifted = (index + 5) % 27
        require "pry"; binding.pry
        ciphered << @alphabet[shifted]
        require "pry"; binding.pry
      end
    end
    ciphered
  end
end

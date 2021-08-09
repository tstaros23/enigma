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



  def encrypt
    chars = @message.split("")
    ciphered = ""
    shifts = create_shifts.values

    chars.each do |char|
      if @alphabet.include? char

          index = @alphabet.index(char)
          shift_index = (index + shifts.first) % 27
          ciphered << @alphabet[shift_index]
          shifts = shifts.rotate
      end
    end
    ciphered
  end
end
